# what should we do now? : we should not depend on gpt wholly. Think!

import numpy as np

a = 3 < 4
b = not 12 < 8 and -3 > -5

print(a, b)
print(type(a), type(b))

i = 3 # integer
j = 3. # float 
print(type(i), type(j))

x = np.array([2.3, -4, 23.4, 11, -65])
y = np.array([1,2,3,4,5])

print(x[2])
x[2] = -5 # update new value as substitution
print(x[2])

mytuple = (2, False, 'oats', 0.3432)
print(mytuple[3])

tuple2list = list(mytuple)
print(tuple2list)
print(tuple2list[2])

tempF = float(input("temp of yesterday : ")) # basically input value's type is "string"
print(tempF, type(tempF))


