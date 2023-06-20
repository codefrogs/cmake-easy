#!/bin/cmake -P
# Cmake-easy by Codefrogs
#
message( "Cmake-easy by Codefrogs")
message( "" )

# ----------------------------------
# Setting a local variable 
function( get_user_name)
  set(var "Nathan" ) # var here is local
endfunction()

set(var "Unknown")
get_user_name()
message( "1: User name: ${var}")

# ----------------------------------
# Setting a parent variable
function( get_animal )
  set(animal "Gorilla" PARENT_SCOPE ) # var here is local
endfunction()

set(animal "Unknown")
get_animal()
message( "2: User name: ${animal}")

# ----------------------------------
# Returning a variable in a global variable
function( get_planet name )
  set(${name} "Jupiter" PARENT_SCOPE ) # var here is local
endfunction()

set(planet "Unknown")
get_planet("planet")
message( "3: Planet name: ${planet}")


# ----------------------------------
# Still returning an integer as a string
function( get_flight_speed speed_var)
  set(${speed_var} 330 PARENT_SCOPE)
endfunction()

get_flight_speed(speed)
message( "2: Flight BA734 - Speed: ${speed}")

function( get_mp3_filenames file file2)
	set(${file} "sine.mp3" PARENT_SCOPE)
	set(${file2} "saw.mp3" PARENT_SCOPE)
endfunction()

get_mp3_filenames(f1 f2)
message( "6: Filename: ${f1}" )   
message( "7: Filename: ${f2}")

