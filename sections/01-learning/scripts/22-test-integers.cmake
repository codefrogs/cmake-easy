#[=[
cmake-easy by Codefrogs
How to test the value of integers.

Run: cmake -P CMakeLists.txt
#]=]

# Numbers comparisons:
# -GREATER (greater than)
# -LESS (less than)
# -EQUAL (equal)
# -NOT <comparision>
# -LESS_EQUAL (less or equal to)
# -GREATER_EQUAL (greater or equal to)
cmake_minimum_required(VERSION 3.29)

set(level 12)
if ( ${level} GREATER 8) 
	message( "1. if <var> GREATER example")
endif()

set(space 0)
if ( ${space} LESS 10 )
  message("2. if <var> LESS example")
endif()

set(DEPTH 25)
if ( ${DEPTH} EQUAL 25 )
  message("3. if <var> EQUAL example")
endif()

set(DEPTH 25)
if ( NOT ${DEPTH} EQUAL 0 )
  message("4. if NOT <var> EQUAL example")
endif()

set (cpu_usage 5)
if ( ${cpu_usage} LESS_EQUAL 5 )
  message ("5. if <var> LESS_EQUAL example")
endif ()

set (cpu_temp 105) 
if ( ${cpu_temp} GREATER_EQUAL 85 )
  message ("4. if <var> GREATER_EQUAL example")
endif()
