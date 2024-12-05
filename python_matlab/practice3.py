# practice3 JeongSeoJin(2024112396)

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# problem 1
def f(x):
	return x**2 * abs(np.sin(x)) - 4
	
x = np.linspace(0, 4, 1000)
plt.figure()
plt.plot(x, f(x))
plt.xlabel('x')
plt.ylabel('y')
plt.show()

# problem 2
def sech(x):
	return 1 / np.cosh(x)

x = np.linspace(-1, 1, 100)

fig = plt.figure()
ax1 = fig.add_subplot(221)
ax1.plot(x, np.sinh(x), label='sinh(x) vs x')
ax1.set_xlabel('x')
ax1.set_ylabel('sinh(x)')

ax2 = fig.add_subplot(222)
ax2.plot(x, np.cosh(x), label='cosh(x) vs x')
ax2.set_xlabel('x')
ax2.set_ylabel('cosh(x)')

ax3 = fig.add_subplot(223)
ax3.plot(x, np.tanh(x), label='tanh(x) vs x')
ax3.set_xlabel('x')
ax3.set_ylabel('tanh(x)')

ax4 = fig.add_subplot(224)
ax4.plot(x, sech(x), label='sech(x) vs x')
ax4.set_xlabel('x')
ax4.set_ylabel('sech(x)')
fig.subplots_adjust(wspace=1)
fig.subplots_adjust(hspace=0.5)
plt.show()

# problem 3
# 3-(1)
x = np.arange(0, 10.1, 0.1)
# 3-(2)
y1 = lambda x: np.exp(-x)
y2 = lambda x: np.exp(-x) * x
y3 = lambda x: np.exp(-x) * x**2

plt.figure()
plt.plot(x, y1(x), c = "b")
plt.plot(x, y2(x), c = "r", marker = "o", ls = '-')
plt.plot(x, y3(x), c = "k", marker = '*', ls = '--')
plt.show()

#problem 4
# 4-(1)
x = np.arange(-1, 1.1, 0.1)
y = np.arange(-1, 1.1, 0.1)
X, Y = np.meshgrid(x, y)
Z = X**2 - Y**2

# 4-(2)
fig = plt.figure()
ax5 = fig.add_subplot(121, projection = '3d')
ax5.plot_wireframe(X, Y, Z)

# 4-(3)
ax6 = fig.add_subplot(122, projection = '3d')
ax6.plot_surface(X, Y, Z)
plt.show()










