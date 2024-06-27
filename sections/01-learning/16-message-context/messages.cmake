# Cmake-easy by Codefrogs
#
message( "Cmake-easy by Codefrogs")
message( "Using CMAKE_MESSAGE_CONTEXT with message()." )
message( "" )

function(display users)
  list(APPEND CMAKE_MESSAGE_CONTEXT "display")
  list(LENGTH users user_cnt)
  message("Users count: ${user_cnt}") 
  foreach( user IN LISTS users )
	display_user( ${user} )
  endforeach()
endfunction()

function(display_user user)
  list(APPEND CMAKE_MESSAGE_CONTEXT "display_user")
  message("User: ${user}")
endfunction()

message("Started")
set(users "Horwell,Mellanie,32;Konran,Keith,18;Walker,Molly,28" )
display( "${users}" )
message("End")
