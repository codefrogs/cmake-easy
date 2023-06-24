#!/bin/cmake -P
# See: https://cmake.org/cmake/help/latest/command/message.html

message("0. Hello")
message([[
1. A multi line
2. message
3. shown as is!]])

message([=[
4. Another multi-line message.
5. But we have to end it,
6. the way we started it, i.e. with a bracket+equals+bracket.
]=])

# Messages can have a mode, e.g. STATUS, WARNING, NOTICE, FATAL_ERROR

message( STATUS "7. A status line" )
message( "" )
message( WARNING "8. A warning line" )
message( NOTICE "9. A notice line" )
message( "" )
message( FATAL_ERROR "10. This will do a stop!" )
