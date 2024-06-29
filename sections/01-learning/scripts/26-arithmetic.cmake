# cmake-easy by Codefrogs
cmake_minimum_required(VERSION 3.29)

#Integers
set(val_int 5)
message( "1: Integer: ${val_int}" )

set(val_float 5.66666)
message( "2: Float: ${val_float}" )

#Addition two Integers
set(p1 3)
set(p2 7)
math(EXPR result "${p1}+${p2}")
message( "3: 3+7 = ${result}" )

# Multiply two Integers
set(v1 2)
set(v2 8)
math(EXPR result "${v1}*${v2}")
message( "4: 2*8 = ${result}")

#Addition two floats - In your dreams!
# set(f1 3.2)
# set(f2 7.1)
# math(EXPR result "${f1}+${f2}")

# Increment - But only if you insist!
set(int_val 32)
math(EXPR result "${int_val}+1")
message( "5: 32 + 1 = ${result}")

