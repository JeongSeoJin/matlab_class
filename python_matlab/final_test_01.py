
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
print("\n2-(1). Matrix AB Result: {}".format(AB))


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
CTA = np.dot(np.transpose(C), A)
print("\n2-(3). Matrix C^T A Result:")
print(C_T_A)
print(CTA)

# %% Pb. 3-(1)

import numpy as np
import matplotlib.pyplot as plt

# 행렬 B 정의
B = np.array([
    [-2.1, 4],
    [0.3, 1],
    [5, -0.8],
    [1, 2]
])

# (1) 네 번째 행 벡터의 유클리드 노름 계산
vector_4th = B[3, :]  # B의 4번째 행
norm_4th = np.linalg.norm(vector_4th)  # 유클리드 노름 계산
print("3-(1). Fourth Row Vector Norm:")
print(norm_4th)  # 결과 출력


# %% Pb. 3-(2)

origin = np.array([0, 0])  # 원점
distances = []  # 거리 저장 리스트

plt.figure(figsize=(8, 8))
plt.grid(True)

# 각 점을 그래프에 표시하고, 원점과 연결
for i, (x, y) in enumerate(B):
    point = np.array([x, y])  # 현재 점
    distance = np.linalg.norm(point - origin)  # 원점과의 거리
    distances.append(distance)  # 거리 저장
    
    # 점과 선분 그리기
    plt.scatter(x, y, label=f"Point {i+1} ({x}, {y})")  # 점 표시
    plt.plot([origin[0], x], [origin[1], y], 'k--', linewidth=0.8)  # 원점과의 선분

    # 거리 정보 출력
    print(f"Distance between Origin and Point {i+1}: {distance:.4f}")

# 원점 표시
plt.scatter(0, 0, color='red', label="Origin (0, 0)")

# 그래프 설정
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.title("Graph of Points and Distances from Origin")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.legend()
plt.show()

# %%

import numpy as np
import matplotlib.pyplot as plt

# 주어진 행렬 B
B = np.array([[-2.1,  4.0],
              [ 0.3,  1.0],
              [ 5.0, -0.8],
              [ 1.0,  2.0]])

# (1) B 행렬의 4번째 행 벡터 [1.0, 2.0]의 유클리드 놈 계산
fourth_row = B[3]  # B의 4번째 행
norm_value = np.linalg.norm(fourth_row)
print("4번째 행 벡터의 유클리드 놈:", norm_value)  # √(1² + 2²) = √5 ≈ 2.236

# (2) 그래프 그리기
# 원점과 각 점들을 연결하고, 각 점들 사이의 선분을 그린다.
# 또한 각 점까지의 거리(원점으로부터의 거리)와 점들 사이 거리 계산

fig, ax = plt.subplots()

# 원점
origin = np.array([0, 0])

# 원점에서 각 점까지의 거리 출력 및 선분 그리기
for i, point in enumerate(B):
    # 원점과 현재 점을 연결하는 선분
    ax.plot([origin[0], point[0]], [origin[1], point[1]], 'k--', alpha=0.5)
    
    # 원점에서 현재 점까지의 거리
    dist_from_origin = np.linalg.norm(point - origin)
    print(f"점 {i+1}번 {point}까지의 원점으로부터 거리: {dist_from_origin:.4f}")
    
    # 그래프에 점 표시
    ax.plot(point[0], point[1], 'bo')
    ax.text(point[0], point[1], f" P{i+1}", fontsize=9, ha='right')

# 점들 사이 거리 계산 및 선분 그리기 (총 4개의 점이므로 3개의 선분)
for i in range(len(B)-1):
    p1, p2 = B[i], B[i+1]
    distance = np.linalg.norm(p2 - p1)
    print(f"점 {i+1}과 점 {i+2} 사이 거리: {distance:.4f}")
    
    # 점들 사이를 연결하는 선분
    ax.plot([p1[0], p2[0]], [p1[1], p2[1]], 'r-')

# 그래프 설정
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_title('B 행렬의 점들 및 거리')
ax.grid(True)
ax.axhline(0, color='black', linewidth=1)  # x축 표시선
ax.axvline(0, color='black', linewidth=1)  # y축 표시선
plt.show()

# %%
