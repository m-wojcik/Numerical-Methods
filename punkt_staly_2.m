% zad 2

% f(x) = x^2-6x+8
k=25;

x=3;
for i=1:k
    y = sqrt(6*x-8);
    x = y;
end
disp("x=sqrt(6x-8): x = " + x);

x=3;
for i=1:k
    y = x^2/6 + 4/3;
    x = y;
end
disp("x=x^2/6 + 4/3: x = " + x);