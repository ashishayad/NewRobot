#Conditional Statements and loops

# if else, for, while, break, continue, pass

# IF ELSE BLOCK
'''
if(expression):
    statement1
    statement2
    ...
else:
    statement4
    statement5
    .....
'''
# a = 10
# if(a%2 == 0):
#     print("a is even")
# else:
#     print("a is odd")


# # IF ELIF BLOCK
# '''
# if(expression):
#     statement1
#     statement2
#     ...
# else:
#     statement4
#     statement5
#     .....
# '''
# a = 7
# if(a%2 == 0):
#     print("a is divisble by 2")
# elif(a%3 == 0):
#     print("a is divisible by 3")
# elif(a%5 == 0):
#     print("a is divisible by 5")
# elif(a%7 == 0):
#     print("a is divisible by 7")


# NESTED IF ELIF BLOCK
'''
if(expression2):
    statement1
    if(expression2)
        statement2
    ...
    else:
        statement4
        statement5
        .....
else:
    statement6
    statement7
'''
# a = "7"
# if(type(a) == int):
#     if(a//7 == 0):
#         print("a is interger and divisible by 7")
#     else:
#         print("a is interger and not divisible by 7")
# else:
#     print("a is not an integer")


#Statement
#break - to come out of the loop or block if expression is true
#continue - to skip the loop or block if expression is true
#pass - to just pass the statement. Let it go the execution

# msg = "The OTP for the current transaction is 1234"
# print (msg)


# for i in range(0, 3):
#     otp = input("Enter the otp :")
#     if(otp in msg):
#         print("Authorize the transaction")
#         #break
#     else:
#         #continue
#         pass
#         print("INVALID")


#While Loop
'''
iterator =
while(expressoin):
    statement1
    statement2

    iterator = iterator + 1
'''

# msg = "Welcome to Delhi"
# i = 0
# while i < len(msg):
#     print(msg[i])
#     i = i + 1


# reverse the string
msg = "Welcome to Delhi"
i = len(msg)
while i > 0:
    print(msg[i-1])
    i = i - 1


# Keep on dividing the number by 15 unitl 0 is given as input

# while True:
#     numerator = int(input("Enter the number :"))
#     result = numerator / 15
#     print(result)
#     if(numerator == 0):
#         break