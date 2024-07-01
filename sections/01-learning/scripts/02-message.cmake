#!/bin/cmake -P

# Shows how to use message()
# You can set the message mode, or logging level on the command line using:
# cmake --log-level=<level>

# See: https://cmake.org/cmake/help/latest/command/message.html
# See: https://cmake.org/cmake/help/latest/manual/cmake.1.html#cmdoption-cmake-log-level
cmake_minimum_required(VERSION 3.26)

message("0. Hello") # The basic message

message(1. Is this allowed?! Look no quotes!) # Quotes are not always required!
# But does it work ok? 

message([[
2. A multi line
3. message
4. shown as is!]])

message([=[
5. Another multi-line message.
6. But we have to end it,
7. the way we started it, i.e. with a bracket+equals+bracket.
]=])

# Messages can have a mode, e.g. STATUS, WARNING, NOTICE, FATAL_ERROR

message( STATUS "8. A status line" )
message( "" )
message( WARNING "9. A warning line" )
message( NOTICE "10. A notice line" )
message( "" )
message( FATAL_ERROR "11. This will do a stop!" )
message( "Never runs! Nice try!")
