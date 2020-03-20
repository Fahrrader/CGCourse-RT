project(RayTracing)
cmake_minimum_required(VERSION 3.15)

set(CATCH_BUILD_TESTING OFF)
add_subdirectory(lib/catch2)

find_package(OpenMP)
if (OPENMP_FOUND)
    set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
endif()

FILE(GLOB SRC_FILES src/*.cpp src/*.h)
add_library(cg ${SRC_FILES})
target_include_directories(cg PUBLIC lib/catch2/single_include/catch2/ lib/linalg/ lib/stb/ lib/tinyobjloader/ src/ tests/)
target_link_libraries(cg Catch2::Catch2)


add_executable(ray_generation src/ray_generation_main.cpp)
target_link_libraries(ray_generation cg)

add_executable(ray_generation_test tests/ray_generation_tests.cpp)
target_link_libraries(ray_generation_test cg)


add_executable(mt_algorithm_main src/mt_algorithm_main.cpp)
# target_link_directories(mt_algorithm_main )
target_link_libraries(mt_algorithm_main cg)

add_executable(mt_algorithm_test tests/mt_algorithm_tests.cpp)
target_link_libraries(mt_algorithm_test cg)


add_executable(lighting_main src/lighting_main.cpp)
# target_link_directories(mt_algorithm_main )
target_link_libraries(lighting_main cg)

add_executable(lighting_test tests/lighting_tests.cpp)
target_link_libraries(lighting_test cg)


add_executable(shadowray_main src/shadow_rays_main.cpp)
# target_link_directories(mt_algorithm_main )
target_link_libraries(shadowray_main cg)

add_executable(shadowray_test tests/shadow_rays_tests.cpp)
target_link_libraries(shadowray_test cg)


add_executable(reflection src/reflection_main.cpp)
# target_link_directories(mt_algorithm_main )
target_link_libraries(reflection cg)

add_executable(reflection_test tests/reflection_tests.cpp)
target_link_libraries(reflection_test cg)


add_executable(refraction src/refraction_main.cpp)
# target_link_directories(refraction D:/GitHub/CGCourse-RT)
target_link_libraries(refraction cg)

add_executable(refraction_test tests/refraction_tests.cpp)
target_link_libraries(refraction_test cg)


add_executable(aa src/anti_aliasing_main.cpp)
# target_link_directories(refraction D:/GitHub/CGCourse-RT)
target_link_libraries(aa cg)

add_executable(aa_test tests/anti_aliasing_tests.cpp)
target_link_libraries(aa_test cg)


add_executable(aabb src/aabb_main.cpp)
target_link_libraries(aabb cg)

add_executable(aabb_test tests/aabb_tests.cpp)
target_link_libraries(aabb_test cg)


add_executable(bvh src/bvh_main.cpp)
target_link_libraries(bvh cg)

add_executable(bvh_test tests/bvh_tests.cpp)
target_link_libraries(bvh_test cg)


add_executable(denoising src/denoising_main.cpp)
target_link_libraries(denoising cg)

# add_executable(denoising_test tests/denoising_tests.cpp)
# target_link_libraries(denoising_test cg)