#!/bin/bash
# cmake-easy by Codefrogs
# Shows how to test files.

# These are the file test operators,which are fairly self-explanatory:
# -EXISTS <path> 
# -IS_READABLE <path> 
# -IS_WRITABLE <path>
# -IS_EXECUTABLE <path>
# -<file> IS_NEWER_THAN <file>
# -IS_DIRECTORY <path>
# -IS_SYMLINK  <path>
# -IS_ABSOLUTE <path>
#
# For the complete list of file operators, see:
# https://cmake.org/cmake/help/latest/command/if.html#file-operations
#

set(script_name ${CMAKE_ARGV2})

if ( IS_DIRECTORY data )
  message( "1: data is a directory.")
else()
 message(  "X: data isn't a directory or does not exist!")
endif()

if ( EXISTS ${script_name} )
  message( "2: Script (${script_name}) exists.") # No surprise there!
else()
  message( "X: Can't find this script: ${script_name}!")
endif()

if ( IS_SYMLINK ${script_name} )
  message( "X: This script file is a symbolic link!")
else()
  message( "3: The script is not a symlink!")
endif()

# Test if this script exists AND is readable.
if ( EXISTS ${script_name} )
  message( "4: This script exists AND is readable.")
else()
  message( "X: This script either does NOT exist or is NOT readable!")
endif()

# Permissions
# There are typically three permissions you can check:
# - read    permission
# - write   permission
# - execute permission

if (IS_READABLE ${script_name})
  message( "5: You have read permissions for: ${script_name}.")
else()
  message( "X: This file (${script_name}) is NOT readable!")
endif()

if (IS_WRITABLE ${script_name})
  message( "6: You have write permissions for: ${script_name}.")
else()
  message( "X: This file (${script_name}) is NOT writable!")
endif()

if (IS_EXECUTABLE ${script_name} )
  message( "7: You can execute: ${script_name}")
else()
  message( "X: Sorry you aren't allowed to execute: ${script_name}!")
endif()


