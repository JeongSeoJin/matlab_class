function V = volume(y)
    R = 24;
    V = pi .* (-1/3 .* y .^3 + R.^2.*y.^2);
end
