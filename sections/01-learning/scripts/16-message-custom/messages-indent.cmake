# Cmake-easy by Codefrogs
#
# Message context with indent example.
#
# Centre to message context is CMAKE_MESSAGE_INDENT
# This is a list to which we can append a 'context'.
# 
# see: https://cmake.org/cmake/help/latest/variable/CMAKE_MESSAGE_INDENT.html

function(display_user user)
  list(APPEND CMAKE_MESSAGE_INDENT "  ")
  message("User: ${user}")
endfunction()

function(display users)
  list(APPEND CMAKE_MESSAGE_INDENT "  ")

  list(LENGTH users user_cnt)
  message("Users count: ${user_cnt}") 
  foreach( user IN LISTS users )
	display_user( ${user} )
  endforeach()
  message("Counted.")
endfunction()

message( "Cmake-easy by Codefrogs")
message( "Using CMAKE_MESSAGE_INDENT with message()." )
message( "" )

message("Started")
set(users "Horwell,Mellanie,32;Konran,Keith,18;Walker,Molly,28" )
display( "${users}" )
message("End")
