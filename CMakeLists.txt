cmake_minimum_required(VERSION 3.8)
project(ClionTemplate)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES count.c library.c library.h)
add_executable(ClionTemplate ${SOURCE_FILES})

add_subdirectory(tests/)
