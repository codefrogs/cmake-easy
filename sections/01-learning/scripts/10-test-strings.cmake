#!/bin/cmake -P
# Cmake-easy by Codefrogs
#
# Using if with strings
#
# See: https://cmake.org/cmake/help/latest/command/if.html#comparisons
# See: https://cmake.org/cmake/help/latest/command/if.html#version-comparisons

message("cmake-easy by Codefrogs")
message("String comparisions")

set(name1 "Napier")
set(name2 "Pascal")
if ( ${name1} STREQUAL ${name2} ) 
  message( "X.Same name!" )
else()
  message( "1. Different" )
endif()

# Ordering of strings
# Notice the backward-slash for the greater sign.
set( apple "Apple" )
set( pinea "Pinapple" )

if ( ${apple} STRGREATER ${pinea} )
  message( "X. Apple comes after Pinapple?!" )
else()
  message( "2. Pinapple comes after Apple." )
endif()

if ( ${apple} STRLESS ${pinea} )
  message( "3. Apple is less than Pinapple." )
endif()

set(other "Apple")
if ( ${apple} STREQUAL ${other} )
  message( "4. Apple is the same as Apple." )
endif()

set(pear "Pear")
if ( NOT ${apple} STREQUAL ${pear} )
  message( "5. Apple is not a Pear." )
endif()
