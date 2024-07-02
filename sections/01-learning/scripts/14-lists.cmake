#[=[
cmake-easy by Codefrogs

How to create a list
Run this script with cmake -P CMakeLists.txt

This creates a list variable called users.
Each item is separated by a semi-colon.

See: https://cmake.org/cmake/help/latest/command/list.html
#]=]
cmake_minimum_required(VERSION 3.29)

set( users Tom Carol Dave Ross Stephanie )

message("1. Users are: ${users}")
message("2.")
message(${users}) # Listing again, but it's call joined up!
message("3." ${users} )  # Still joined up
message("4." "${users}" ) # Back to looking like a list!

# The above shows that you need quotes around a list to get it shown
# properly.

# Some list basics.
list(LENGTH users num)  # List length
list(GET users 0 first) # Get the first user
list(FIND users Dave index) # Get the index of time with 'Dave'

message( "5. Number of users: ${num}" )
message( "6. First user     : ${first}" )
message( "7. Index of Dave  : ${index}" )

message( "8. Add user Gerald")
list(APPEND users Gerald) # Append an item to the end of the list
message( "9. Users are: ${users}" )

message( "10. Removing Dave")  # Poor dave!
list(REMOVE_AT users ${index})
message( "11. Users are: ${users}")

