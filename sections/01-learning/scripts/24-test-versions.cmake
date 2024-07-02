#!/bin/cmake -P
# Cmake-easy by Codefrogs
#
# Using if with strings
#
# See: https://cmake.org/cmake/help/latest/command/if.html#version-comparisons

# Version comparisons:
# -VERSION_EQUAL
# -VERSION_LESS
# -VERSION_LESS_EQUAL
# -VERSION_GREATER
# -VERSION_GREATER_EQUAL
cmake_minimum_required(VERSION 3.29)

message("cmake-easy by Codefrogs")
message("Version number comparisions")

set(ver "4.3.1")
set(version_required "4.3.1")
if ( ${ver} VERSION_EQUAL ${version_required} ) 
  message( "1. Same version found." )
endif()

set(version_required "4")
if ( ${ver} VERSION_EQUAL ${version_required} )    
  message( "X. Same version! 4 = 4.3.1?!" )
else()
  message( "2. Versions differ 4 != 4.3.1")
endif()

set( lib_ver "1.8.7" )
set( lib_ver_required "1.9" )

if ( ${lib_ver} VERSION_GREATER ${lib_ver_required} )
  message( "X. Version 1.8.7 < 1.9" )
else()
  message( "3. Old version of library found." )
endif()

set( kitkat 4.4.1 )
set( lollipop 5.0 )
if ( ${kitkat} VERSION_LESS ${lollipop} )
  message( "4. Kitkat is older than Lollipop." )
endif()

set(other "kitkat")
if ( ${kitkat} VERSION_EQUAL ${other} )
  message( "5. Same version (4.4.1)" )
endif()

set(other "4.4.4")
if ( ${kitkat} VERSION_LESS_EQUAL ${other} )
  message( "6. Kitkat 4.4.1 is older than 4.4.4." )
endif()

set(nougat "7.0")
if ( ${nougat} VERSION_GREATER_EQUAL ${kitkat} )
  message( "7. Nougat is newer than Kitkat" )
endif()

# We can also just use raw numbers
if ( 2.1 VERSION_GREATER 2.0.9 )
  message ("8. Version 2.1 is newer than 2.0.9")
endif()
