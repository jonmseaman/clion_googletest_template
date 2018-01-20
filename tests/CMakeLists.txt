cmake_minimum_required(VERSION 3.8)
project(tests)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES sample1.cc sample1_unittest.cc sample1.h prime_tables.h)
add_executable(tests ${SOURCE_FILES})

add_subdirectory(lib/googletest)
include_directories(lib/googletest/googletest/include)
include_directories(lib/googletest/googlemock/include)

target_link_libraries(tests gtest gtest_main)

# Link to code to test.
include_directories(../src)
#link_directories($(CMAKE_BINARY_DIR)/src)
find_library(NAMES my_shared_library)
target_link_libraries(tests my_shared_library)

# Run tests with ctest
enable_testing()
add_test(AllTests tests DEPENDS tests)
