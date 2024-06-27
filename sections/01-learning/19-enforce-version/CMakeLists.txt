# cmake-easy by Codefrogs
# Shows how to enforce use of compiler version

cmake_minimum_required(VERSION 3.20)
project(minimum CXX)
add_executable(minimum main.cpp)

# Enforce C++ standard 20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
