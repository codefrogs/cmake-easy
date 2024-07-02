#!/bin/cmake -P
# CMake-easy by Codefrogs
# Passing arguments to a script.
# You can do this by using this format:
# <cmake script name>.cmake <arg1> <arg2> <arg3> ... 
# e.g. ./13-args.cmake toyota honda suzuki lexus
cmake_minimum_required(VERSION 3.29)
message( "CMake-easy by Codefrogs")

# The parameter count is zero, if no arguments are given.
message( "Number of parameters: ${CMAKE_ARGC}" )

# Look at the parameters!
message( "\${CMAKE_ARGV0} = ${CMAKE_ARGV0}" )  # The executable cmake
message( "\${CMAKE_ARGV1} = ${CMAKE_ARGV1}" )  # 'P' which we start with
message( "\${CMAKE_ARGV2} = ${CMAKE_ARGV2}" )  # First user argument
message( "\${CMAKE_ARGV3} = ${CMAKE_ARGV3}" )  # Another, and so on!
message( "\${CMAKE_ARGV4} = ${CMAKE_ARGV4}" )
message( "\${CMAKE_ARGV5} = ${CMAKE_ARGV5}" )
