#!/bin/cmake -P
# Cmake-easy by Codefrogs
#
# Lets explore file testing.
#
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

set(next_file )
if( ${file_curr} IS_NEWER_THAN ${file_prev})
  message( "3: This file is newer than ${file_prev}" )
endif()

if(IS_DIRECTORY "../01-learning" )
  message( "4: Found parent directory: 01-learning")
endif()

