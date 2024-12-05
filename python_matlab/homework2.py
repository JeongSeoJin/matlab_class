# Homework2 JeongSeoJin(2024112396)
import numpy as np

# problem 1
#######################################
a = np.zeros([4,6])

print(a)

for i in range(4):
	for j in range(6):
		a[i][j] = 2 * i - 3 * j

print(a)

# problem 2
####################################### 
summation = 0
n = 1000

for i in range(n+1):
	summation += i
	if summation % 111 == 0 and summation != 0:
		print(summation)
		
	if summation > 1000:
		break

# problem 3
####################################### 
def addVecPol(r1, th1, r2, th2):
	th1 = th1 * np.pi / 180
	th2 = th2 * np.pi / 180
	l1 = r1*np.cos(th1) + r2*np.cos(th2)
	l2 = r1*np.sin(th1) + r2*np.sin(th2)
	
	r = np.sqrt(l1**2 + l2**2)
	th = np.arctan2(l2, l1)
	
	return r, 180 / np.pi * th
	
print(addVecPol(5,23,12,40))
print(addVecPol(6,80,15,125))

# problem 4
####################################### 
A1 = np.matrix('1, 3, 2; 6, 5, 4; 7, 8, 9')
A2 = np.matrix('-2.5, 7, 1; 5, -3, -2.6; 4, 2, -1')

def det3by3(A):
	B1 = np.array([[A[1,1], A[1,2]], [A[2,1], A[2,2]]])
	B2 = np.array([[A[1, 0], A[1, 2]], [A[2,0], A[2,2]]])
	B3 = np.array([[A[1,0], A[1,1]], [A[2,0], A[2,1]]])

	def det2by2(A123, B):
		value = A123 * (B[0, 0] * B[1,1] - B[0, 1] * B[1, 0])
		return value
	
	a = det2by2(A[0,0], B1)
	b = det2by2(A[0,1], B2)
	c = det2by2(A[0,2], B3)

	return a-b+c
	
print("%8.4f" %det3by3(A1))
print("%8.4f" %det3by3(A2))






