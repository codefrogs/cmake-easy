function(getTime)
  string(TIMESTAMP time "%H:%M:%S:%f")
  return(PROPAGATE time)
endfunction()

function(logMsg text)
  getTime(time)
  message("${time}: ${text}")
endfunction()

