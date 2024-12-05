import numpy as np
import matplotlib as mp

x = -5
sgnx2 = x**2
if x < 0:
	sgnx2 = -sgnx2
	
print(sgnx2)

temp = 23

if temp < 0:
	print("fucking cold!")
elif temp < 10:
	print("chilly");
elif temp < 20:
	print("nice")
else:
	print("22222 hot")
	
n = 0
while temp >= 0:
	print("temperature is decreasing")
	temp -= 1
	n += 1
	
print(n)

angle = np.array([30, 45, 60, 75, 125])

for x in angle:
	print("{0:5.2f}".format(np.cos(np.radians(x))))
	print("%5.2f" %(np.cos(np.radians(x))))
	# both ways can be my method
	
x = range(0, 12, 3) # include start value, but exclude end value
y = range(0, 10)
print(y, type(y))
print(x, type(x))
print(list(x))

for x in range(0, 5): # step is automatically set as 1
	print(x)
	
X = np.matrix('3. 1. 2.; -4. 11. 0.; -1. 0 12.')
print(X, type(X))

sumsq = 0.
for i in range(3):
	for j in range(3):
		sumsq = sumsq + X[i, j] ** 2

sumsqrt = np.sqrt(sumsq)
print("square root of sum of squares = ", sumsqrt)

# user-defined function
def func(x):
	y = 3*x**2+0.05
	return x, y
	
print(func(6), type(func(6))) # the return value's type is gonna tuple

# anonymous function -> lambda function
func2 = lambda x: 3*x**2 + 0.34

a = 3.2
print(func2(a))














