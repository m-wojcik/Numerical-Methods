% zad 11

A = [1;1;0];
B = [2;1;0];
C = [1;2;0];
D = [2;2;0];

v = [0;1;0];

H = eye(3) - 2*v*v'/(v'*v)

A1 = H*A
B1 = H*B
C1 = H*C
D1 = H*D

