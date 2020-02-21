project(RayTracing)
cmake_minimum_required(VERSION 3.15)

set(CATCH_BUILD_TESTING OFF)
add_subdirectory(lib/catch2)

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