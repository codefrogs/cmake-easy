# cmake-easy by Codefrogs

# Using 'execute-process' to get the user and list of processes
# This will only work on Linux systems.
# When in a project, you may want to check the OS by using CMAKE_SYSTEM_NAME.
# But hopefully you will find a way to not use OS specfic commands!
# For exammple using cmake's platform agnostic commands.
# These are available via the command line, ie. 'cmake -E <command>'.
#
# see: https://cmake.org/cmake/help/latest/command/execute_process.html
# see: https://cmake.org/cmake/help/latest/variable/CMAKE_SYSTEM_NAME.html#cmake-system-name

# Setting a variable to hold the command
cmake_minimum_required(VERSION 3.29)
set(who_am_i_cmd "whoami")

message("Running 'whoami' command:")
execute_process(COMMAND ${who_am_i_cmd} OUTPUT_VARIABLE user)

message("User is: ${user}")

#Get all processes
set(process_cmd "ps")
set(process_args "-h")

message("Running 'ps' command")
execute_process(COMMAND ${process_cmd} ${process_args} OUTPUT_VARIABLE processes)

message("---Processes---")
message("${processes}")
