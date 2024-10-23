#range - defines a numerical sequence from start to end
#range(start, end, step size)  # end is exlucded
# for i in range(0, 10, 1):
#     print("$" * i)

# for i in range(10, 0, -1):
#     print("$" * i)

#separator
print(4, True, 5.2, "jgjd", sep="--**--")

#Indexing
msg = "Welcome to Delhi"
print(msg[11])

for i in msg:
    print(i, end="-")
