import math
import numpy as np

#problem 1-(1)
print((12-5/2)/abs(22/7-math.pi))

#problem 1-(2)
print(math.pi*11**2*(3*15-11)/3)

#problem 1-(3)
print(1/(1/20+3/11-0.6/0.2))


#problem 2
alpha = 37 / 180 * math.pi
beta = 107 / 180 * math.pi

lhs = math.tan(alpha + beta)
rhs = (math.tan(alpha) + math.tan(beta)) / (1-math.tan(alpha) * math.tan(beta))

print("lhs - rhs value : ", lhs-rhs)

#problem 3
r = 6371
theta = abs(28.9784 - (-3.7038)) * math.pi / 180
volume_lune = 2 * r**2 * theta
print("volume of the lune : ", volume_lune)

#problem 4-(1)
print(round(np.pi, 8))
print(round(np.pi, 7))

#problem 4-(2)
print(2**3**4)
print((2**3)**4)

#problem 4-(3)
print(math.atan(1.5))
print(math.atan(np.degrees(1.5)))
print(math.atan2(-3., -2.))
print(math.atan2(np.degrees(-3.), np.degrees(-2.)))

#problem 4-(4)
print(4+-3)
