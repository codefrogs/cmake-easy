cmake_minimum_required(VERSION 3.29)

message("This script returns an exit code of 0")
message("Check the success code yourself!")

set(success 0)
set(failure 1)

cmake_language(EXIT ${success})
