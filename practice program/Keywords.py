#Keywords

#if = 5200
#if_1 = 5200

#How to get all the python keywords.
#use specific package 'keyword'

import keyword

kw = keyword.kwlist

#for each in kw:
#    print(keyword.kwlist)

print(keyword.iskeyword("if"))
print(keyword.iskeyword("Hello"))