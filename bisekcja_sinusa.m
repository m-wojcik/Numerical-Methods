k = 5;

% cos nie dziala dla a+b=2
a = 0;
b = 2;


for i=1:k
    x = (a+b)/2;
    if f(x)<0
        a = x;
    elseif f(x)>0
        b = x;
    else
        disp("znaleziono pierwiastek: x = " + x)
        break
    end
end
disp("Pierwiastek: x = " + x)


function y = f(x)
    y = sin(pi*x);
end