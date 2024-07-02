#!/bin/cmake -P
# Cmake-easy by Codefrogs
#
cmake_minimum_required(VERSION 3.29)
message( "Cmake-easy by Codefrogs")
message( "Passing parameters, and returning values." )

# ----------------------------------
# Setting a local variable
# No parameter is passed, or returned.
function( get_user_name)
  set(var "Nathan" ) # var here is local
endfunction()

set(var "Unknown")
get_user_name()
message( "1: User name: ${var}")

# ----------------------------------
# Parsing just a single parameter 
function( show_name name )
  message( "2: Name: ${name}" )
endfunction()

set(user "Karl")
show_name( ${user} )

# ----------------------------------
# Parsing multiple parameters
function( add_record name dob postcode )
  message( "3: Add record: Name: ${name}, DOB: ${dob}, Postcode: ${postcode}" )
endfunction()

set(surname "Woods")
set(dob "31.1.2001")
set(postcode "WR21 7ER")
add_record( "${surname}" "${dob}" "${postcode}" )

# ----------------------------------
# Returning a value from a function
# The function sets the parent scope variable 'animal'.
function( get_animal )
  set(animal "Gorilla" PARENT_SCOPE )
endfunction()

set(animal "Unknown")
get_animal()
message( "4: User name: ${animal}")

# ----------------------------------
# Passing a parameters, and getting a return value.
function( get_planet index name )
  set(planets "Mercury;Venus;Earth;Mars;Jupiter;Saturn;Uranus;Neptune;Pluto;PlanetX")
  list(GET planets ${index} planet) # Get the planet at index 'index'.
  set(${name} ${planet} PARENT_SCOPE ) # var here is local
endfunction()

set(my_planet "Unknown")
get_planet(2 "my_planet") # Give the return variable name.
message( "5: Home world: ${my_planet}")

# ----------------------------------
# Still returning an integer as a string
function( get_flight_speed speed_var)
  set(${speed_var} 330 PARENT_SCOPE)
endfunction()

get_flight_speed(speed)
message( "6: Flight BA734 - Speed: ${speed}")

# ----------------------------------
# Returning two values
function( get_mp3_filenames file1 file2)
  set(${file1} "sine.mp3" PARENT_SCOPE)
  set(${file2} "saw.mp3" PARENT_SCOPE)
endfunction()

get_mp3_filenames(f1 f2)
message( "7: Filename: ${f1}" )
message( "8: Filename: ${f2}" )

# ---------------------------------
# Using PROPAGATE
# This is perhaps the easier way of passing
# back values from a function by using 'return'.
#
function( get_planet_info name dist size )
  if(${name} STREQUAL "mars")
    set(${dist} 228)
    set(${size} 3390)
  endif()
  return( PROPAGATE ${dist} ${size} )
endfunction()

get_planet_info(mars dist_km radius_km)
message( "9: Distance of mars from sun[km]: ${dist_km}")
message( "10: Radius of mars[km]: ${radius_km}")
