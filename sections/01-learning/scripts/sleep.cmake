# Utility function
# Just for examples only!
# Not production code!

function(doTick)
  set(val 0)
  foreach(i RANGE 500)
    foreach(j RANGE 100)
      math(EXPR val "${val}+1")
    endforeach()
  endforeach()
endfunction()

# Dummy sleep function
function(sleep t)
  foreach(tick RANGE ${t})  
   doTick()
  endforeach()
endfunction()

