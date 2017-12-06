A = [3 2 1; 2 1 1; 6 2 4]
b = [3;0;6]
rref([A b])
x=A\b

invA = inv(A)
x = invA * b