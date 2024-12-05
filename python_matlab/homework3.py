# Homework3 JeongSeoJin(2024112396)

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Problem 1

def f_sum(x, n_max):
    result = 0  # 결과를 누적할 변수
    for n in range(1, n_max + 1):
        y = (4 / ((2 * n - 1) * np.pi)) * np.cos((2 * n - 1) * x) * (-1) ** (n + 1)
        result += y
    return result
 
x = np.arange(-np.pi, np.pi, 0.01)
y1 = f_sum(x, 1)
y2 = f_sum(x, 2)
y3 = f_sum(x, 3)
y4 = f_sum(x, 4)
y5 = f_sum(x, 5)
plt.plot(x, y1, label = 'fisrt term')
plt.plot(x, y2, label = 'fisrt two term')
plt.plot(x, y3, label = 'fisrt three term')
plt.plot(x, y4, label = 'fisrt four term')
plt.plot(x, y5, label = 'fisrt five term')
plt.grid()
plt.legend()
plt.show()


# Problem 2
plt.figure()

x = np.arange(-np.pi, 2 * np.pi, 0.01)

f = lambda x: np.sin(2 * x) * np.cos(0.5 * x)**2
f_prime = lambda x: 2 * np.cos(2 * x) * np.cos(0.5 * x)**2 - np.sin(2 * x) * np.sin(0.5 * x) * np.cos(0.5 * x)

plt.plot(x, f(x), '-', label = "f(x)")
plt.plot(x, f_prime(x), '--', label = "f'(x)")
plt.legend()
plt.xlabel('x')
plt.ylabel('y')
plt.show()

# Problem 3
plt.figure()

x = lambda t: 0.7 * np.sin(10 * t)
y = lambda t: 1.2 * np.sin(8 * t)

t = np.linspace(0, np.pi, 1000)
plt.plot(x(t), y(t))
plt.xlabel('x')
plt.ylabel('y')
plt.show()

# Problem 4
x = np.linspace(-2, 2)
y = np.linspace(-2, 2)

X, Y = np.meshgrid(x, y)
Z = -1.4*X*Y**3 + 1.4*Y*X**3

fig0 = plt.figure()

ax0 = fig0.add_subplot(111, projection='3d')
ax0.plot_surface(X, Y, Z)
ax0.grid()

plt.show()

fig1 = plt.figure()

ax1 = fig1.add_subplot(111, projection='3d')
ax1.plot_wireframe(X, Y, Z)
ax1.grid()

plt.show()















