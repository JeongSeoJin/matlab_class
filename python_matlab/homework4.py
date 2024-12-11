# homework4 정서진 (2024112396)

import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import quad, solve_ivp, cumulative_trapezoid

################################################
# Problem 1
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

################################################
# Problem 2

b = 5

x = lambda t: 2 * b * np.cos(t) - b * np.cos(2 * t)
y = lambda t: 2 * b * np.sin(t) - b * np.sin(2 * t)

dx_dt = lambda t: -2 * b * np.sin(t) + 2 * b * np.sin(2 * t)
dy_dt = lambda t: 2 * b * np.cos(t) - 2 * b * np.cos(2 * t)

arc_length = lambda t: np.sqrt(dx_dt(t)**2 + dy_dt(t)**2)

sol, error = quad(arc_length, 0, 2 * np.pi)

print("Arc Length:", sol)

t_val = np.linspace(0, 2*np.pi, 100)

plt.figure()
plt.plot(x(t_val), y(t_val))
plt.xlabel('x(t)')
plt.ylabel('y(t)')
plt.axis('equal')
plt.grid()

################################################
# Problem 3

dS = lambda t: np.sin(t**2)
dC = lambda t: np.cos(t**2)

x_val = np.arange(0, 4, 0.05)

C_vals = []
S_vals = []

for t in x_val:
    S_vals.append(quad(dS, 0, t)[0])
    C_vals.append(quad(dC, 0, t)[0]) # quad는 튜플형태로 함숫값과 오차를 제공하기 때문에 0번째 인덱스에 있는 값만 반환해야함.

plt.figure()
plt.plot(x_val, S_vals)
plt.plot(x_val, C_vals)

plt.axis('equal')
plt.grid()

plt.figure()
plt.plot(C_vals, S_vals)

plt.axis('equal')
plt.grid()


################################################
# Problem 4 

v0 = 300 * 1000 / 3600 
deceleration = lambda t, v: -0.0035 * v**2 - 3

t_span = (0, 100)
teval = np.linspace(0, 100, 1000)
solution = solve_ivp(deceleration, t_span, [v0], t_eval=teval)

time = solution.t
velocity = solution.y[0]

stop_index = np.where(velocity <= 0)[0][0]
time = time[:stop_index + 1]
velocity = velocity[:stop_index + 1]

distance = np.zeros_like(time)
for i in range(1, len(time)):
    dt = time[i] - time[i-1]
    distance[i] = distance[i-1] + 0.5 * (velocity[i-1] + velocity[i]) * dt

fig, axs = plt.subplots(2, 1, figsize=(8, 10))

axs[0].plot(time, velocity, label="Velocity (m/s)", color="blue")
axs[0].set_title("Velocity vs Time")
axs[0].set_xlabel("Time (s)")
axs[0].set_ylabel("Velocity (m/s)")
axs[0].grid(True)
axs[0].legend()

axs[1].plot(time, distance, label="Distance (m)", color="orange")
axs[1].set_title("Distance vs Time")
axs[1].set_xlabel("Time (s)")
axs[1].set_ylabel("Distance (m)")
axs[1].grid(True)
axs[1].legend()

plt.tight_layout()
plt.show()
