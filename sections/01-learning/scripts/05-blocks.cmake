# How to create a block 
# Run this script with cmake -P CMakeLists.txt
#

# Here we define a block. If you know C++, you can think
# of these as your curly-bracket equivalent!
# Easy right!?
cmake_minimum_required(VERSION 3.29)

set(moon Io)
set(colour orange)
set(font 8)

block()
  message("1. ---Inside block---")
 
  set(moon Deimos) 
  set( colour blue )  # local variable
  set( font 14 )      # local variable

  message("2. Vars: moon(${moon}), colour(${colour}), font(${font})")
  message("3. ---End of block---")

endblock()

message("4. ---Outside block---")
message("5. Vars: moon(${moon}), colour(${colour}), font(${font})")

# We can if we wish allow variables in a block to set values
# of variables outside its scope.

message("6.Using block() with PROPAGATE")
set(user "Morphius")
message("7. User is: ${user}")

block(PROPAGATE user)
  message("8. ---Inside block---")
  set(user "Trinity")
  message("9. Set new user to: ${user}")
  message("10. ---End of block---")
endblock()

message("11. ---Outside block---")
message("12. User is: ${user}")


