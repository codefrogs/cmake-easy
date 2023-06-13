# Execute with: cmake -P CMakeLists.txt

message("Hello")
message([[
1. A multi line
2. message
3. shown as is!]])

message([=[
4. Another multi-line message.
5. But we have to end it,
6. the way we started it, i.e. with a bracket+equals+bracket.
]=])
