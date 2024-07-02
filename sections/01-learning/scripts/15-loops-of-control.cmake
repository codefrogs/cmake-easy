#!/bin/cmake -P
# CMake-easy by Codefrogs
#
# Control flow:
#
# - loops
# - return
# - exit
# See: https://cmake.org/cmake/help/latest/command/foreach.html
cmake_minimum_required(VERSION 3.29)

message( "CMake-easy by Codefrogs")
message( "")

message( "Control flow")
message( "------------")
message( "" )

message( "foreach (<var> RANGE <val>) example: " )
foreach (i RANGE 10)
  message( "${i} " )
endforeach()

message("")

# A more complicated RANGE example
message( "foreach( <var> RANGE <min> <max> example: " )
foreach (i RANGE 2 9)
  message("${i} ")
endforeach()
message("")

# Using a list
message( "foreach( <var> ITEMS <space separted items> example: ")
foreach( name ITEMS Centaurs Cerberus Charybdis Griffins)
  message( "${name} ")
endforeach()
message("")

# Using continue
message( "foreach( <var> RANGE <val>)  + continue() example: ")
foreach( i RANGE 10 )
  math( EXPR val "${i}%2" ) # Looks complicated but returns 0 for even numbers.
  if (${val} EQUAL 0)
    continue()
  endif()
  message( "${i} ")
endforeach()
message("")

#Using break
message( "foreach( <var> RANGE <val>) + break example: ")
set(num 5)
foreach( i RANGE 100)
  message( "${i} ")
  if (${i} EQUAL ${num} )
    break()
  endif()
endforeach()

#Using while
message( "while( <var> STREQUAL <val>) example: ")
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
message("foreach( <var> IN ZIP_LISTS <list> <list>) examples")
set( french "le congélateur;les meulbles;août;soulagé;sève" )
set( english "freezer;furniture;August;relieved;sap" )

foreach( tr IN ZIP_LISTS french english )
  message( STATUS ${tr_0}->${tr_1} )
endforeach()

message( STATUS )
foreach( en fr IN ZIP_LISTS french english )
  message( STATUS ${en}-> ${fr} )
endforeach()
