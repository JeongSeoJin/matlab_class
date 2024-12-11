
import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import *
from scipy.integrate import *

# %% Pb. 1-(1)

import numpy as np
from scipy.integrate import *

def integrand(x, y):
    return x**2 * np.sin(x * y) - np.cos(y)

result, error = dblquad(integrand, 0, 3, lambda y: -1, lambda y: 2)
print("1. Double Integral Result:")
print(result)

# %% Pb. 2-(1)

A = np.array([
    [1, 3, -2, 2],
    [0, 2.1, 1, 4],
    [7, -5, 2, 9]
])

B = np.array([
    [-2.1, 4],
    [0.3, 1],
    [5, -0.8],
    [1, 2]
])

AB = np.dot(A, B)
print("\n2-(1). Matrix AB Result:")
print(AB)


# %% Pb. 2-(2)

row_A3 = A[2, :]
col_B2 = B[:, 1]
dot_product = np.dot(row_A3, col_B2)
print("\n2-(2). Dot Product of A's 3rd Row and B's 2nd Column:")
print(dot_product)


# %% Pb. 2-(3)
C = B[0:3, :]  # First three rows of B
C_T = C.T
C_T_A = np.dot(C_T, A)
print("\n2-(3). Matrix C^T A Result:")
print(C_T_A)



# %% Pb. 3-(1)



# %% Pb. 3-(2)



