#!/bin/cmake -P
# Cmake-easy by Codefrogs
#
# Lets explore file testing.
#
cmake_minimum_required(VERSION 3.29)
message( "Cmake-easy by Codefrogs")
message( "" )

# Set up some variables to test with.
set(file_prev "./11-test-versions.cmake")
set(file_curr "./12-test-files.cmake") # get this file's name.

# Using 'test'
# All the same file test.
message( "File testing")
message( "------------")
message( "" )

if ( EXISTS ${file_curr} ) 
  message( "1: Using EXISTS: File exists: ${file_curr}")
endif()

if ( EXISTS ${file_prev} )
  message( "2: Using EXISTS: File exists: ${file_prev}")
endif()

if ( NOT EXISTS "Babbage" )
  message("3: File Babbage does not exist.")
endif()

set(next_file )
if( ${file_curr} IS_NEWER_THAN ${file_prev})
  message( "4: This file is newer than ${file_prev}" )
endif()

if(IS_DIRECTORY "../01-learning" )
  message( "5: Found parent directory: 01-learning")
endif()

