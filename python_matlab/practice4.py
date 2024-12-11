# practice4 정서진 (2024112396)

import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import *
from scipy.integrate import *


##############################
# problem1

# 1-(1)
A = np.array([
    [5, 2, 4],
    [2, 7, -3],
    [6, -10, 0]
])

B = np.array([
    [11, 5, -3],
    [0, -12, 4],
    [2, 6, 1]
])

C = np.array([
    [7, 14, 1],
    [10, 3, -2],
    [8, -5, 9]
])

# 1-(2)

E = np.dot(A, B)
F = np.dot(B, A)
G = E - F
print(E)
print(F)
print("Error = {}".format(G))

# 1-(3)
LHS = np.transpose(np.dot(A, B).dot(C))
RHS = np.dot(np.dot(np.transpose(C), np.transpose(B)), np.transpose(A))  # C^T B^T A^T

print(LHS - RHS)

##############################
# problem2

# 2-(1)
x1 = np.linalg.inv(A).dot(B)

# 2-(2)
x2 = np.linalg.solve(A, B) # gauss elimination 계산속도가 빠름.주로 실무에서 이걸 사용

# 2-(3)
Z = x1 - x2
print(Z)



##############################
# problem3

x_val = np.linspace(0, 5)
f = lambda x: x * np.exp(-x) * np.cos(2 * x) - 0.05
# y = f(x_val) - 0.05

plt.figure()
plt.plot(x_val, f(x_val))
plt.grid()

root1 = fsolve(f, 0.5)
root2 = fsolve(f, 1)
root3 = fsolve(f, 2)
root4 = fsolve(f, 4)

print("roots : {}, {}, {}, {}".format(root1, root2, root3, root4))

min_result = minimize_scalar(f, bounds = (1,2), method = 'bounded')
max_result = minimize_scalar(lambda x: -f(x), bounds = (0, 1), method = 'bounded')

print("\nLocal minimum and maximum of f(x) in 0 < x < 5:")
print(f"Minimum: x = {min_result.x:.4f}, f(x) = {min_result.fun:.4f}")
print(f"Maximum: x = {max_result.x:.4f}, f(x) = {-max_result.fun:.4f}")

##############################
# problem 4

#4-(1)

integral_1, error_1 = quad(lambda x: np.cos(x**2), 0, np.sqrt(2 * np.pi))
print(f"Integral 1: ∫ cos(x^2) dx = {integral_1:.4f}")

#4-(2)

integral_2, error_2 = dblquad(lambda x, y: x * y**2, 1, 3, lambda y: 0, lambda y: 1)
print(f"Integral 2: ∬ xy^2 dx dy = {integral_2:.4f}")


#################################
# problem 5

def func(t, y):
    return np.sin(t) + y

def funcA(t):
    return -0.5 * (np.cos(t) + np.sin(t)) + (21 / 2) * np.exp(t)

tf = 3.14 + 0.314
tspan = [0., tf]
teval = np.arange(0, tf, 0.314)
y0 = [10.] 
result = solve_ivp(func, tspan, y0, t_eval=teval)

plt.figure()
plt.plot(result.t, result.y[0,  :])
plt.plot(result.t, funcA(result.t), ls = '--')
plt.show()