# homework4 정서진 (2024112396)

# Problem 1

import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import quad

A = np.array([
    [2, -4, 5, -3.5, 1.8, 4],
    [-1.5, 3, 4, -1, -2, 5],
    [5, 1, -6, 3, -2, 2],
    [1.2, -2, 3, 4, -1, 4],
    [4, 1, -2, -3, -4, 1.5],
    [3, 1, -1, 4, -20, -4]
])


b = np.array([52.52, -21.1, -27.6, 9.16, -17.9, -16.2])

solution = np.linalg.solve(A, b)

print("Solution (a, b, c, d, e, f):", solution)
print("Checked")

# Problem 2

b = 5

x = lambda t: 2 * b * np.cos(t) - b * np.cos(2 * t)
y = lambda t: 2 * b * np.sin(t) - b * np.sin(2 * t)

dx_dt = lambda t: -2 * b * np.sin(t) + 2 * b * np.sin(2 * t)
dy_dt = lambda t: 2 * b * np.cos(t) - 2 * b * np.cos(2 * t)

arc_length = lambda t: np.sqrt(dx_dt(t)**2 + dy_dt(t)**2)

sol, error = quad(arc_length, 0, 2 * np.pi)

print("Arc Length:", sol)

t = np.arange(0, 2*np.pi, 100)

plt.plot(x(t), y(t))
plt.show()