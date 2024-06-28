cmake_minimum_required(VERSION 3.26)
set(wont_get_here "X: Should not get here!") # For non-messages.

message("cmake-easy by Codefrogs")

# Simple if-endif
set(colour "white")
if( ${colour} STREQUAL "white")
  message("1: STREQUAL test: colour = ${colour}")
endif()

# --- special values ---
message("------Special values-----------")
if (1)
	message("2: Condition: 1    => true")
endif()

if (ON)
  message("3: Condition: ON   => true")
endif()

if (YES)
  message("4: Condition: YES  => true")
endif()

if (TRUE)
  message("5: Condition: TRUE => true")
endif()

if (Y)
  message("6: Condition: Y    => true")
endif()


message("------------------------")

if (0)
  message(${wont_get_here})
else()
	message("7: Condition: 0     => false")
endif()

if (OFF)
  message(${wont_get_here})
else()
  message("8: Condition: OFF   => false")
endif()

if (NO)
  message(${wont_get_here})
else()
  message("9: Condition: NO    => false")
endif()

if (FALSE)
  message(${wont_get_here})
else()
  message("10: Condition: FALSE => false")
endif()

if (N)
  message(${wont_get_here})
else()
  message("11: Condition: N     => false")
endif()

message("----------End Special-----------")


# Using && (AND) in an 'if' statement
set(var1 "high")
set(var2 "low")

if (${var1} STREQUAL "high" AND ${var2} STREQUAL "low" )
  message("12: if <condition> AND <condition> example.")
endif()

# if-else <undefined variable> example
if ( ${undefined_variable}} ) 
  message(${wont_get_here})
else()
  message("13: if (<undefined var>): => equates to false!")
endif()

# if-else <defined variable> example
set(my_string_var "text") # defined
if ( ${my_string_var} ) 
  message(${wont_get_here})
else()
  message("14: if (<var>): => still equates to false!!!") # Surprise!
endif()

# DEFINED condition
if ( DEFINED my_string_var ) 
  message("15: DEFINED <var> example") # 'my_string_var' is defined
else()
  message(${wont_get_here})
endif()

# if--elseif DEFINED condition
set(my_defined_var 42)
if ( ${undefined_variable} )
  message( ${wont_get_here})
elseif ( DEFINED my_defined_var )
  message( "16: if-elseif DEFINED <var> example")
endif()

# if-elseif-else example
if ( ${undefined_variable} )
  message( ${wont_get_here} )
elseif ( ${undefined_variable} )
  message( ${wont_get_here} )
else()
  message( "17: if-elseif-else example")
endif()
