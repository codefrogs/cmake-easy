#[=[
cmake-easy by Codefrogs

Show if-else statement example.

#]=]
cmake_minimum_required(VERSION 3.29)

set(location "London")

if ( ${location} STREQUAL "Paris" )

  message( "X. We are in Paris!")

elseif ( ${location} STREQUAL "London" )

  message("1. We are in rainy London!")

else()

  message ("X. We are somewhere else!")

endif()

