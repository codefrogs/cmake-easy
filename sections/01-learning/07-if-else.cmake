#[=[
cmake-easy by Codefrogs

#]=]

set(location "London")

if ( ${location} STREQUAL "Paris" )

  message( "X. We are in Paris!")

elseif ( ${location} STREQUAL "London" )

  message("1. We are in rainy London!")

else()

  message ("X. We are somewhere else!")

endif()

