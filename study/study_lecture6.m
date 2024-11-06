u = [2 -13 0 75 2 0 -60];
v = [1 0 -5];
[q,r] = deconv(u, v)

%return to origin
u = conv(v, q)+r
k1 = conv(u, v)
k2 = polyder(k1)
k = polyder(u, v) % derivative of a product two polynomials
[n, d] = polyder(u, v)