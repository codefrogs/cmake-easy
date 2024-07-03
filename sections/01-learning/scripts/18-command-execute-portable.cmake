# cmake-easy by Codefrogs

# You can execute commands in a platform agnostic way.
# In this script we make use of the 'cmake -E' command call.
#
# see: https://cmake.org/cmake/help/latest/command/execute_process.html
# see: https://cmake.org/cmake/help/latest/manual/cmake.1.html#run-a-command-line-tool
# see: https://cmake.org/cmake/help/latest/variable/CMAKE_COMMAND.html

# Setting a variable to hold the command
cmake_minimum_required(VERSION 3.29)

message("Platform agnostic commands example")
message("----------------------------------")
message("")

# Create a variable to hold the command: 
# In this case, we do a 'cat' on this script file.
# CMAKE_CURRENT_LIST_FILE is the filename of this script.
set(cmd "cat")
set(cmd_args ${CMAKE_CURRENT_LIST_FILE}) 

message("Command to execute: ${cmd} ${cmd_args}")

message("Executing...")
# CMAKE_COMMAND is the path to the cmake executable
execute_process(COMMAND ${CMAKE_COMMAND} -E ${cmd} ${cmd_args} OUTPUT_VARIABLE cmd_output)
message("done!")
message("")

# message("Output: ${cmd_output}") # i.e. this script file!

# Get the length in characters of this script.
string(LENGTH "${cmd_output}" script_len)
message("Script length: ${script_len}")
