import numpy as np
from numpy import linalg
from scipy.optimize import fsolve
from scipy.integrate import quad
import matplotlib.pyplot as plt

list1 = [1, 2, 3, 4]
list2 = [5, 6, 7, 8]
print(list1 * 2)

a = np.array(list1)
print(2 * a)

b = np.array(list2)
print(a * b) #element calculation

print("=============")
print("inverse matrix")

A = np.array([[-2, 5], [7, 0.5]])
b = np.array([43, -9])

Ainv = np.linalg.inv(A)

x1 = Ainv.dot(b) # solution1

x2 = np.linalg.solve(A, b) # solution2

print("=========")
print("equation's root")
print(x1, x2)

coef = np.array([1.,3.,2]) # x**2 + 3x + 2 = 0
x = np.roots(coef)

print("==============")
print("newton's method")

def f(x):
    return x*np.sin(x) - 1

x = np.linspace(0, 10)
plt.plot(x, f(x))
plt.grid()

root1 = fsolve(f, 1)
root2 = fsolve(f, 2.5)
print("roots = {}, {}".format(root1, root2))

plt.show()

print("==============")
print("integration")

f = lambda t: t * np.cos(t)
a = 0
b = np.pi/2
y, ey = quad(f, a, b)

print(y)
print(ey) # 오차값
