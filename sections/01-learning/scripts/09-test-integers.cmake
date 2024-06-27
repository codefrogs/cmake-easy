#[=[
cmake-easy by Codefrogs
How to test the value of integers.

Run: cmake -P CMakeLists.txt
#]=]

# Here we show how to compare integers (not strings!)

set(DEPTH 25)
if ( ${DEPTH} EQUAL 25 )
	message("1. Depth is 25 metres.")
endif()

set(level 12)
if ( ${level} GREATER 8) 
	message( "2. Reporting level > 8!")
endif()

set(space 0)
if ( ${space} LESS 10 )
	message("3. Space is below 10%!")
endif()

set (cpu_temp 85) 
if ( ${cpu_temp} GREATER_EQUAL 85 )
	message ("4. CPU is overheating.")
endif()

set (cpu_usage 5)
if ( ${cpu_usage} LESS_EQUAL 5 )
	message ("5. CPU idle.")
endif ()
