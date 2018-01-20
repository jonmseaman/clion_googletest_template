cmake_minimum_required(VERSION 3.8)
project(ClionTemplate)

set(CMAKE_C_STANDARD 99)

add_library(my_shared_library SHARED library.c library.h)

set(SOURCE_FILES count.c)
add_executable(ClionTemplate ${SOURCE_FILES})

target_link_libraries(ClionTemplate my_shared_library)
