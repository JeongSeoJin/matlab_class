# practice2 JeongSeoJin(2024112396)

import numpy as np
import math

#############################################
# problem 1-(1)
n = 10
for i in range(n + 1):
#	print("{}, {}". format(i, np.sqrt(i)))
	print("%6d, %8.4f" %(i, np.sqrt(i)))

#############################################	
# problem 1-(2)
a = np.array([3, 40, 1, 8, 0])
b = np.array([-7, 5, 4, 16, 1])
c = np.zeros(5)

# way 1
n = 0
while n <= 4:
	c[n] = a[n] + b[n]
	n += 1
print(c[:])

# way 2
for i in range(5):
	c[i] = a[i] + b[i]
	
print(c[:])

#############################################
# problem 2
n = int(input("type in number of parcels : "))
par_type = int(input("choose the type. (registered=1, regular=0)"))

if par_type == 1:
	charge = 4000 * n
else:
	charge = 2600 * n

print("Total postage is {} won.".format(charge))

#############################################
# problem 3
def fct_P2_3(x):
	y = 0.6*x**3*np.exp(-0.47*x) + 1.5*x**2*np.exp(-0.6*x)
	print(y)

x = np.array([-2, 4])
		
fct_P2_3(x)

#############################################
# problem 4
def fct_P2_4(theta):
	r = 3*np.sin(3*np.cos(0.5*theta))
	return r
	
theta = np.array([np.pi/6, np.pi*5/6])
print(fct_P2_4(theta))









