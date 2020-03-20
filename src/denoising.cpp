#include "denoising.h"

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include <time.h>
#include <omp.h>
#include <random>

Denoising::Denoising(short width, short height) : AABB(width, height)
{
}

Denoising::~Denoising()
{
}

void Denoising::Clear()
{
    history_buffer.resize(static_cast<size_t>(width) * static_cast<size_t>(height));
    frame_buffer.resize(static_cast<size_t>(width) * static_cast<size_t>(height));
}

Payload Denoising::Hit(const Ray& ray, const IntersectableData& data, const MaterialTriangle* triangle, const unsigned int max_raytrace_depth) const
{
    if (triangle == nullptr)
        return Miss(ray);

    Payload payload;
    payload.color = triangle->emissive_color;
    if (payload.color > float3{0, 0, 0}) return payload;

    float3 X = ray.position + ray.direction * data.t;
    float3 N = triangle->GetNormal(data.baricentric);

    if (triangle->reflectiveness || triangle->reflectiveness_and_transparency) {
        auto ref_dir = ray.direction -  2.0f * dot(N, ray.direction) * N;
        Ray reflection(X, ref_dir);
        return TraceRay(reflection, max_raytrace_depth - 1);
    }

    // Diffuse
    //for (auto light : lights)
    const int num_secondary_rays = 1;
    float3 color;
    for (int i = 0; i < num_secondary_rays; i++)
    {
        float3 rand_direction = blue_noise[GetRandom(omp_get_thread_num()+clock())];
        if (dot(rand_direction, N) <= 0) rand_direction = -rand_direction;
        Ray to_light(X, rand_direction);

        Payload light_payload = TraceRay(to_light, max_raytrace_depth - 1);

        color += light_payload.color * triangle->diffuse_color
                         * std::max(0.0f, dot(N, to_light.direction));
    }

    payload.color += color / num_secondary_rays;

    return payload;
}

void Denoising::SetHistory(unsigned short x, unsigned short y, float3 color)
{
    history_buffer[static_cast<size_t>(y) * static_cast<size_t>(width) + static_cast<size_t>(x)] = color;
}

float3 Denoising::GetHistory(unsigned short x, unsigned short y) const
{
    return history_buffer[static_cast<size_t>(y) * static_cast<size_t>(width) + static_cast<size_t>(x)];
}


Payload Denoising::Miss(const Ray& ray) const
{
    return Payload();
}

int Denoising::GetRandom(const int thread_num) const
{
    static std::default_random_engine generator(thread_num);
    static std::uniform_int_distribution<int> distribution(0, 512 * 512);
    return distribution(generator);
}

void Denoising::DrawScene(int max_frame_number)
{
    camera.SetRenderTargetSize(width, height);
    for (int frame_number = 0; frame_number < max_frame_number; frame_number++) {
        std::cout << "frame " << (frame_number + 1) << std::endl;
#pragma omp parallel for
        for (short x = 0; x < width; x++) {
#pragma omp parallel for
            for (short y = 0; y < height; y++) {
                auto payload = TraceRay(camera.GetCameraRay(x, y), raytracing_depth).color;
                SetPixel(x, y, payload);
                SetHistory(x, y, GetHistory(x, y) + payload);
            }
        }
    }

    for (short x = 0; x < width; x++)
        for (short y = 0; y < height; y++)
            SetPixel(x, y, GetHistory(x, y) / max_frame_number);
}

void Denoising::LoadBlueNoise(std::string file_name)
{
    int width, height, channels;
    unsigned char* img = stbi_load(file_name.c_str(), &width, &height, &channels, 0);

    if (!img) return;

    for (int i = 0; i < width * height; i++)
    {
        float3 pixel{ img[channels * i] / 128.f - 1,
                      img[channels * i + 1] / 128.f - 1,
                      img[channels * i + 2] / 128.f - 1};
        blue_noise.push_back(pixel);
    }
}
