# How to create a function
# Run this script with cmake -P CMakeLists.txt
#

# Here we define a function called 'showTitle'
# Easy!

function(showTitle)

  message("1. showTitle CALLED! ")
  
  set( colour blue )  # local variable
  set( font 14 )      # local variable

  message("2. Terminal: Colour(${colour}) Font(${font})")

endfunction()

showTitle()
