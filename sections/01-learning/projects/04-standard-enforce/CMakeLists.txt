# Minimum build
# Run: cmake -B build -S .

cmake_minimum_required(VERSION 3.29)
project( Enforce CXX )

set(CMAKE_CXX_STANDARD 20) # We want the C++20 standard
set(CMAKE_CXX_STANDARD_REQUIRED ON) # Enforce the standard!

add_executable(enforce main.cpp)
