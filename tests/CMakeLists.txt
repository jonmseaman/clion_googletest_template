cmake_minimum_required(VERSION 3.8)
project(tests)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES sample1.cc sample1_unittest.cc sample1.h prime_tables.h)
add_executable(tests ${SOURCE_FILES})

add_subdirectory(lib/googletest)
include_directories(lib/googletest/googletest/include)
include_directories(lib/googletest/googlemock/include)

target_link_libraries(tests gtest gtest_main)
