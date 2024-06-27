message("cmake-easy by Codefrogs: unknown variables")
message("")
set(file "route.txt")

# Unknown variables
message("The variable 'file'      is known  : ${file}")
message("The variable 'something' is unknown: ${something}")  # shows empty space

# As you will see, the unknown variable 'something'
# is replaced by an empty string.
