cmake_minimum_required(VERSION 3.8)
project(Count)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES count.c library.c library.h)
add_executable(count ${SOURCE_FILES})