#include "reflection.h"

Reflection::Reflection(short width, short height) :ShadowRays(width, height)
{
}

Reflection::~Reflection()
{
}

Payload Reflection::Hit(const Ray& ray, const IntersectableData& data, const MaterialTriangle* triangle, const unsigned int raytrace_depth) const
{
    if (triangle == nullptr)
        return Miss(ray);

    Payload payload;
    payload.color = triangle->emissive_color;

    float3 X = ray.position + ray.direction * data.t;
    float3 N = triangle->GetNormal(data.baricentric);

    if (triangle->reflectiveness || triangle->reflectiveness_and_transparency) {
        auto ref_dir = ray.direction -  2.0f * dot(N, ray.direction) * N;
        Ray reflection(X, ref_dir);
        return TraceRay(reflection, raytrace_depth - 1);
    }

    // Diffuse & specular
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
