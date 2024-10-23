#Bitwise Operator
#Bil level operations

# &, |, <<, >>, ~

#Bitwise and (&)
#Return true if all are True
'''
0 & 0 => 0
0 & 1 => 0
1 & 0 => 0
1 & 1 => 1
'''

# a = 10
# b = 5

# a_bin = bin(a)
# b_bin = bin(b)

# print(a_bin)        # 1 0 1 0
# print(b_bin)        # 0 1 0 1 
#                     # --------
#                     # 0 0 0 0
#                     # --------

# print(a & b)
# print(int(0b0000))

#Bitwise or (|)
#Return true if any one is True
'''
0 | 0 => 0
0 | 1 => 1
1 | 0 => 1
1 | 1 => 1
'''

# a = 10
# b = 5

# a_bin = bin(a)
# b_bin = bin(b)

# print(a_bin)        # 1 0 1 0
# print(b_bin)        # 0 1 0 1 
#                     # --------
#                     # 1 1 1 1
#                     # --------

# print(a | b)
# print(int(0b1111))

#Bitwise negation ( ~ )
#-number => -(number + 1)
# a = 10
# print(~a)  # -(number + 1)

#Bitwise Left Operator (<<)
# number << n bits => shift the binary number n bits from the left

a = 10
print(a<<1)   #  1 0 1 0  <<   10100
print(0b10100)

#Bitwise Right Operator (>>)
# number >> n bits => shift the binary number n bits to the right

a = 10
print(a>>1)   #  1 0 1 0  <<   101
print(0b101)