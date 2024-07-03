# Prevent in-source builds example
# Run: cmake -B . -S .

cmake_minimum_required(VERSION 3.29)
project( NoInSource CXX )

function( NoInSourceBuilds )
  if ( ${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR} )
    message(FATAL_ERROR "In-source builds are not allowed!")
  endif()
endfunction()

NoInSourceBuilds()

# Should not get here
message("Generation done.")
