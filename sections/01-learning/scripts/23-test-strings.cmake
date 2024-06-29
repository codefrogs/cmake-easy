#!/bin/cmake -P
# Cmake-easy by Codefrogs
#
# Using if with strings
#
# See: https://cmake.org/cmake/help/latest/command/if.html#comparisons
# See: https://cmake.org/cmake/help/latest/command/if.html#version-comparisons

# String comparisons:
# -STRGREATER (greater than)
# -STRLESS (less than)
# -STREQUAL (equal)
# -STRLESS_EQUAL (less or equal to)
# -STRGREATER_EQUAL (greater or equal to)

message("cmake-easy by Codefrogs")
message("String comparisions")

set(name1 "Napier")
set(name2 "Pascal")
if ( ${name1} STREQUAL ${name2} ) 
  message( "X.Same name!" )
else()
  message( "1. if <var> STREQUAL <var> example" )
endif()

# Ordering of strings
set( apple "Apple" )
set( pinea "Pinapple" )

if ( ${apple} STRGREATER ${pinea} )
  message( "X. Apple comes after Pinapple?!" )
else()
  message( "2. if <var> STRGREATER <var> example" )
endif()

if ( ${apple} STRLESS ${pinea} )
  message( "3. if <var> STRLESS <var> example" )
endif()

set(other "Apple")
if ( ${apple} STREQUAL ${other} )
  message( "4. if <var> STREQUAL <var> example." )
endif()

if ( ${apple} STRLESS_EQUAL "Apple" )
  message( "5. if <var> STRLESS_EQUAL <var> example." )
endif()

set(pear "Pear")
if ( NOT ${apple} STREQUAL ${pear} )
  message( "6. if NOT <var> STREQUAL <var> example" )
endif()
