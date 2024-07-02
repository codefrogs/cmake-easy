# How to create a function
# Run this script with cmake -P CMakeLists.txt
#
# Show use of 'macro'.
cmake_minimum_required(VERSION 3.29)

include(sleep.cmake) # Ignore me for now

macro(getTime)
  string(TIMESTAMP time "%H:%M:%S:%f")
endmacro()

function(logMsg text)
  getTime()
  message("${time}: ${text}")
endfunction()

#[=[ 

 We have to be careful here. This macro ONLY works inside a function
 So this is bad-practice really, but shows you how you have to be
 careful with macros.
 
 Just like in C++, macros just replace the text from where they are
 called from. For this reason, it's also bad-practice to put a 'return'
 inside a macro.

 #]=]
macro(showInfo)

  # The name of the function
  logMsg("CMAKE_CURRENT_FUNCTION: ${CMAKE_CURRENT_FUNCTION}")  

  # The location of this function, which surprisingly you may actually need!
  # logMsg("CMAKE_CURRENT_FUNCTION_LIST_DIR: ${CMAKE_CURRENT_FUNCTION_LIST_DIR}")

  # Just for debug?
  # logMsg("CMAKE_CURRENT_FUNCTION_LIST_LINE: ${CMAKE_CURRENT_FUNCTION_LIST_LINE}")

  # Don't do this! - It's completely confusing.
  # return()
endmacro()

function(setUp)
  message("Calling macro showInfo: #1")
  showInfo() 
  message("Called  macro showInfo: #1")

  message("")

  message("Calling macro showInfo: #2")
  showInfo()
  message("Called  macro showInfo: #2")

endfunction()

function( cleanUp )
  message("Calling cleanUp function")
  showInfo()
  message("Called cleanUp function")
endfunction()

setup()
message("")

logMsg("Working...")
sleep(1) # Sleep for one second! Zzz...
logMsg("Done.")
message("")

cleanUp()
message("")
message("END")
