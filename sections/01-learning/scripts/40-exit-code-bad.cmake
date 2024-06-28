message("This script returns an exit code of 1")
message("Check the failure code yourself!")

set(success 0)
set(failure 1)

cmake_language(EXIT ${failure})
