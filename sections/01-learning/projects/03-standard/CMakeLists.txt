# Minimum build
# Run: cmake -B build -S .

cmake_minimum_required(VERSION 3.29)
project( Minimal CXX )

set(CMAKE_CXX_STANDARD 20) # We want the C++20 standard
                           # But CMake will make do with whatever is available!

add_executable(stdex main.cpp)
