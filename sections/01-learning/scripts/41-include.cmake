# The 'include' example
cmake_minimum_required( VERSION 3.25 )

include(sleep.cmake) # Needs the path to the file to include
include(utils/logging.cmake)

message("Sleeping...")
logMsg("Logging message")
sleep(1)
message("Done.")


