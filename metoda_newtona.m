% zad 5

k = 3;

x = -1;

for i=1:k
    y = x - f(x)/df(x);
    x = y;
end
disp("x0 = -1: x = " + x)

x = 0;

for i=1:k
    y = x - f(x)/df(x);
    x = y;
end
disp("x0 = 0: x = " + x)

function y = f(x)
    y = -x^3-cos(x);
end

function y = df(x)
    y = -3*x^2 + sin(x);
end