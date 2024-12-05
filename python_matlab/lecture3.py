import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 5) #  50EA 정확히 0.1이 아님.
f = lambda x: np.cos(x)*np.cosh(x)-1 # anonymous function

plt.plot(x, f(x), color = 'k', linestyle = '--', linewidth = 2.5) # 함수 값 계산 후에 연산.
plt.grid()
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Plot of cos(x)*cosh(x) - 1')
plt.show()



PG = [ 0., 10., 20., 30., 40., 50., 60., 80., 90., 100.]
FP = [0., -3.4, -7.9, -13.7, -23.5, -36.8, -52.8, -46., -30., -12.8]

x1 = np.array([1,2,3,4,5])

add1 = PG + FP #리스트 두 개가 그냥 더해짐.
add2 = x1 + x1

plt.scatter(PG, FP)
plt.show()

Conc = [2, 4, 8, 12, 16, 20]
NaCl = [1.01509, 1.03038, 1.06121, 1.09244, 1.12419, 1.15663]
MgCl2 = [1.0168, 1.0338, 1.0683, 1.1035, 1.1395, 1.1764]

plt.plot(Conc, NaCl, marker='o', c='k', mec='k', mfc='w', label='NaCL')
plt.plot(Conc, MgCl2, marker='s', c='k', ls='--', mec='k', mfc='w', label='MgCl2')
plt.grid()
plt.xlim(0., 22.)
plt.ylim(1., 1.2)
plt.xticks(np.arange(0,24,2))
plt.yticks(np.arange(1,1.22,0.02))
plt.xlabel('Concentration - wt%')
plt.ylabel('Density - gm/cc')
plt.title('Density of Salt and Mag Chloride Solutions')
plt.legend(loc='lower right')
plt.show()

import numpy as np
import matplotlib.pyplot as plt
x = np.linspace(0,np.pi, 100)
fun1 = lambda x: np.sin(x)
fun2 = lambda x: np.cos(x)
fig = plt.figure()
ax1 = fig.add_subplot(121) # 세로 방향은 211
ax1.plot(x, fun1(x), c='k', label='sin(x)')
ax1.plot(x, fun2(x), c='k', ls='--', label='cos(x)')
ax1.grid()
ax1.set_xlabel('x')
ax1.set_ylabel('sin(x) and cos(x)')
ax1.set_title('trig functions')
ax1.legend()
ax2 = fig.add_subplot(122) # 세로 방향은 212
ax2.plot(fun1(x), fun2(x), c='k')
ax2.grid()
ax2.set_xlabel('sin(x)')
ax2.set_ylabel('cos(x)')
ax2.set_title('cos(x) vs sin(x) for x = 0 to pi')
fig.subplots_adjust(wspace=0.5) #두 그래프 사이의 너비 변경하는 코드
# 세로 방향으로 스페이싱을 하기 위해서는 hspace  = 0.5처럼 작성
plt.show()


bin_edges = [ 73.98, 73.99, 74., 74.01, 74.02, 74.03, 74.04 ]
hist = [ 8., 8., 14., 7., 0., 3. ]


bin_width = bin_edges[1] - bin_edges[0]
n = len(hist)
bin_centers = np.zeros((n))
for i in range(n):
    bin_centers[i] = (bin_edges[i] + bin_edges[i + 1]) / 2 # 리스트의 연산

#np.array연산은 위처럼 성분별 연산을 해주지 않아도 됨. 

plt.bar(bin_centers, hist, width = bin_width, color = 'w', edgecolor = 'k')
plt.xlabel('piston inside diameter - mm')
plt.ylabel('frequency')
plt.title('histogram chart of piston data')













