#include "refraction.h"

Refraction::Refraction(short width, short height) :Reflection(width, height)
{
}

Refraction::~Refraction()
{
}

Payload Refraction::Hit(const Ray& ray, const IntersectableData& data, const MaterialTriangle* triangle, const unsigned int max_raytrace_depth) const
{
    if (max_raytrace_depth <= 0) {
		return Miss(ray);
	}

    if (triangle == nullptr)
        return Miss(ray);

    Payload payload;
    payload.color = triangle->emissive_color;

    float3 X = ray.position + ray.direction * data.t;
    float3 N = triangle->GetNormal(data.baricentric);

    if (triangle->reflectiveness) {
        auto ref_dir = ray.direction -  2.0f * dot(N, ray.direction) * N;
        Ray reflection(X, ref_dir);
        return TraceRay(reflection, max_raytrace_depth - 1);
    }

    if (triangle->reflectiveness_and_transparency) {
        float kr;
        float cosi = std::max(-1.f, std::min(1.f, dot(ray.direction, N)));
        float etai = 1.f;
        float etat = triangle->ior;
        if (cosi > 0.f) {
            std::swap(etai, etat);
        }
        float sint = etai / etat * sqrtf(std::max(0.f, 1.f - cosi * cosi));
        if (sint >= 1.f) {
            kr = 1.f;
        } else {
            float cost = sqrtf(std::max(0.f, 1.f - sint * sint));
            cosi = fabs(cosi);
            float Rs = ((etat * cosi) - (etai * cost)) / ((etat * cosi) + (etai * cost));
            float Rp = ((etai * cosi) - (etat * cost)) / ((etai * cosi) + (etat * cost));
            kr = (Rs * Rs + Rp * Rp) / 2;
        }

        bool outside = dot(ray.direction, N) < 0.f;
        auto bias = 0.001f * N;
        float3 refraction_color;

        if (kr < 1.f) {
            cosi = std::max(-1.0f, std::min(1.0f, dot(ray.direction, N)));
            etai = 1.f;
            etat = triangle->ior;
            if (cosi < 0.f)
                cosi = -cosi;
            else
                std::swap(etai, etat);

            float eta = etai / etat;
            float k = 1.f - eta * eta * (1.f - cosi * cosi);
            float3 refr_dir{0, 0, 0};

            if (k >= 0.f)
                refr_dir = eta * ray.direction + (eta * cosi - sqrtf(k)) * N;

            Ray refraction_ray{outside ? X - bias : X + bias, refr_dir};
            refraction_color = TraceRay(refraction_ray, max_raytrace_depth - 1).color;
        }

        auto refl_dir = ray.direction - 2.f * dot(N, ray.direction) * N;
        Ray reflection{outside ? X + bias : X - bias, refl_dir};
        auto reflection_color =  TraceRay(reflection, max_raytrace_depth - 1).color;

        auto r = Payload();
        r.color = reflection_color * kr + refraction_color * (1.f - kr);
        return r;
    }

    // Diffuse
    for (auto light : lights) {
        Ray to_light(X, light->position - X);
        float to_light_distance = length(light->position - X);

        float t = TraceShadowRay(to_light, to_light_distance);
        if (std::fabs(t - to_light_distance) > 0.001f)
            continue;

        payload.color += light->color * triangle->diffuse_color
                         * std::max(0.0f, dot(N, to_light.direction));

        float3 reflection_direction = 2.0f * dot(N, to_light.direction) * N - to_light.direction;
        payload.color += light->color * triangle->specular_color
                         * powf(std::max(0.0f, dot(ray.direction, reflection_direction)), triangle->specular_exponent);
    }
    return payload;
}
