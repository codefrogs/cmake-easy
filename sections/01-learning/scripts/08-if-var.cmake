#[=[
cmake-easy by Codefrogs

Run: cmake -P CMakeLists.txt

#]=]
cmake_minimum_required(VERSION 3.29)

set(location "London")

if ( ${location} ) 
  message( "X. Location defined ")
endif()

set(user_answer "Y") # Or could be YES, or TRUE
if ( ${user_answer} STREQUAL "Y" )
  message("1. User answer is ${user_answer}")
endif()

if ( ${unknown_var} )
  message ("X. Variable is known.")
endif()

# Don't use bare variable names!
if ( unknown_var )
  message ("X. Variable known")
endif ()

#How to test if a variable is defined
if ( DEFINED user_answer )
  message("2. User gave an answer")
endif()

