# Cmake-easy by Codefrogs
#
# Message context example.
#
# Centre to message context is CMAKE_MESSAGE_CONTEXT
# This is a list to which we can append a 'context'.
# 
# see: https://cmake.org/cmake/help/latest/manual/cmake.1.html#cmdoption-cmake-log-context
# see: https://cmake.org/cmake/help/latest/variable/CMAKE_MESSAGE_CONTEXT.html#variable:CMAKE_MESSAGE_CONTEXT

function(display_user user)
  list(APPEND CMAKE_MESSAGE_CONTEXT "display_user")
  message("User: ${user}")
endfunction()

function(display users)
  list(APPEND CMAKE_MESSAGE_CONTEXT "display")
  list(LENGTH users user_cnt)
  message("Users count: ${user_cnt}") 
  foreach( user IN LISTS users )
	display_user( ${user} )
  endforeach()
endfunction()

list(APPEND CMAKE_MESSAGE_CONTEXT "root")

message( "Cmake-easy by Codefrogs")
message( "Using CMAKE_MESSAGE_CONTEXT with message()." )
message( "" )

message("Started")
set(users "Horwell,Mellanie,32;Konran,Keith,18;Walker,Molly,28" )
display( "${users}" )
message("End")
