#!/bin/cmake -P
# Cmake-easy by Codefrogs

# When building projects, you probably won't 
# make much use of lists.

# see: https://cmake.org/cmake/help/v3.22/command/list.html
cmake_minimum_required(VERSION 3.3)

message( "Cmake-easy by Codefrogs")
message( "Array/List examples" )

# An array that holds a list of items.
# Notice: No commas here!
set( items Water Fish Frogs Lilly Weed Newts Algae)

list( GET items 0 items0 )
list( GET items 1 items1 )
list( GET items 2 items2 )
list( GET items 3 items3 ) 
list( GET items 4 items4 )
list( GET items 5 items5 )
list( GET items 6 items6 )

message( "Item[0]: ${items0}" )
message( "Item[1]: ${items1}")
message( "Item[2]: ${items2}" )
message( "Item[3]: ${items3}" )
message( "Item[4]: ${items4}" )
message( "Item[5]: ${items5}" )
message( "Item[6]: ${items6}" )
message( "" )

message( "----Array Length----" )
list( LENGTH items items_len )
message( "Length: ${items_len}" )
message( "" )

message( "----Array item length----")
string( LENGTH ${items1} items1_len )
message( "Length of ${items1}=${items1_len}" )
message( "" )
message( "----Negative Indexes----" )
list( GET items -1 item6 )
list( GET items -2 item5 )
list( GET items -3 item4 )
message( "Item[-1]: ${item6}" ) 
message( "Item[-2]: ${item5}" )
message( "Item[-3]: ${item4}" )
message( "" )

message( "---Expand all ---" )
message( "${items}" )  # expand with each quoted
message( "" )
message( "---Changing an item---" )
list(REMOVE_AT items 0)
list(INSERT items 0 *Fire* )
message( "${items}" )
message( "" )

message( "---Appending an item---" )
list(APPEND items *Pascals*)
message( "${items}" )
message( "" )

message( "----Array Length----" )
list(LENGTH items items_len)
message( "Length: ${items_len}" )
message( "" )

message( "---Appending---" )
list( APPEND items "Salamander")
message( "${items}" )
message( "" )

message( "---Remove Fish item---" )
list(REMOVE_AT items 1)
message( "${items}" )
message( "" )

message( "---Alternative Create array---" )
set(data "Margin_Top;Margin_Bottom;Header;Footer;Body")
message( "Data: ${data}" )
message( "" )

message( "---Create dictionary" )
message("atomic number -> element")
set(atomic_key "3;92;79;13;26")
set(atomic_val "Lithium;Uranium;Gold;Magnesium;Iron")
foreach(pair IN ZIP_LISTS atomic_key atomic_val)
  message( ${pair_0} -> ${pair_1} )
endforeach()   
message( "" )

message( "---Test value is in a list---" )
if ("Gold" IN_LIST atomic_val)
  message("Stuck gold!")
endif()
message( "" )

#-------------------------------
function( display )
  set(i 1)
  message( "Items:  ${ARGV}" )
  foreach( item IN LISTS ARGV )
     message( "${i}: ${item}" )
     math( EXPR i "${i}+1")
  endforeach()
endfunction()

message( "----List items using function---" )
message( "display( \${items})" )
display("${items}")

# Listing items in an array
message("")
set(planets Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune )
foreach( planet IN LISTS planets )
	message( "Planet: ${planet}" )
endforeach()
