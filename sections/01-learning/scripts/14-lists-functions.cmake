# Cmake-easy by Codefrogs

cmake_minimum_required(VERSION 3.29)

message( "Cmake-easy by Codefrogs")
message( "List show example" )
message( "-----------------" )
message( "" )

function( showValue val)
  message( "showValue CALLED.")
  message( "arg count: ${ARGC}")
  message( "args  are: ${ARGV}")
  message( "Showing value:  ${val}" ) # Will only show the first
  message( "showValue END.\n")
endfunction()

function( showTwoValues val1 val2 )
  message( "showTwoValues CALLED.")
  message( "arg count: ${ARGC}")
  message( "args  are: ${ARGV}")
  message( "Optional args?: ${ARGN}")

  message( "Showing two values: ${val1} ${val2}")
  message( "showTwoValues END.\n")
endfunction()

function( showList )
  message( "showList CALLED.")
  message( "arg count: ${ARGC}")
  if (${ARGC} GREATER 1)
    message( "args are: ${ARGV}")
  else()
    message( "arg   is: ${ARGV0}")
  endif()

  foreach( item IN LISTS ARGV)
    message("${item}")
  endforeach()
  message( "showList END.\n")
endfunction()

set( items Water Fish Frogs Lilly Weed Newts Algae)

message( "Items are: ${items}" )
list(LENGTH items items_len)
message( "List length: ${items_len} ")
message( "" )

message("1. Show single value.")
showValue(${items}) # Only shows the first item!

message("2. Show two values")
showTwoValues(${items}) # Shows first two items.

# How do you pass the list as a single string?
message("3. Pass list as single string.")
showValue("${items}")

# How would you process *each* items in a list passed to a function?
message("4. Show the list, passing list items.")
showList(${items})

message("5. Show the list, passing single string.")
showList("${items}")
