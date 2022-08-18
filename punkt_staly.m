% zad 1

k = 3;

x = 0.5;
for i = 1:k
    y = exp(-x);
    x = y;
end

disp("exp: " + x)

x = 0.5;
for i = 1:k
    y = -log(x);
    x = y;
end
disp("ln: " + x)