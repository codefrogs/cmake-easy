#!/bin/cmake -P
# CMake-easy by Codefrogs
#
# Control flow:
#
# - loops
# - return
# - exit
# See: https://cmake.org/cmake/help/latest/command/foreach.html

message( "CMake-easy by Codefrogs")
message( "")

message( "Control flow")
message( "------------")
message( "" )

message( "RANGE 1-10 example: " )
foreach (i RANGE 10)
  message( "${i} " )
endforeach()

message("")

# A more complicated RANGE example
message( "RANGE 2-9 example: " )
foreach (i RANGE 2 9)
  message("${i} ")
endforeach()
message("")

# Using a list
message( "Loop over items in a list: ")
foreach( name ITEMS Centaurs Cerberus Charybdis Griffins)
  message( "${name} ")
endforeach()
message("")

# Using continue
message( "Odd vals - Using continue(): ")
foreach( i RANGE 10 )
  math( EXPR val "${i}%2" ) # Looks complicated but returns 0 for even numbers.
  if (${val} EQUAL 0)
    continue()
  endif()
  message( "${i} ")
endforeach()
message("")

#Using break
message( "Numbers 1-5 - Using break: ")
set(num 5)
foreach( i RANGE 100)
  if (${i} EQUAL ${num} )
    message( "${i}\n" )
    break()
  endif()
  message( "${i}, ")
endforeach()

#Using while
message( "Using while: ")
set(seq_cnt 0)
set(found "N")
while (${found} STREQUAL "N" )
  if ( ${seq_cnt} GREATER 5)
    set(found "Y")
    message( "Y")
  else()
    message( "N")
  endif()
  math(EXPR seq_cnt "${seq_cnt} +1" )
endwhile()
message("")

# Ziplists
# New in version 3.17 of cmake.

set( french "le congélateur;les meulbles;août;soulagé;sève" )
set( english "freezer;furniture;August;relieved;sap" )
foreach( tr IN ZIP_LISTS french english )
  message( STATUS ${tr_0}->${tr_1} )
endforeach()

message( STATUS )
foreach( en fr IN ZIP_LISTS french english )
  message( STATUS ${en}-> ${fr} )
endforeach()
