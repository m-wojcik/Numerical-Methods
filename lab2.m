clc

a = -10;
b = 10;

epsilons = [];
for i=3:20
    epsilons = [epsilons 10^(-i)];
end

k_real = [];
k_teor = [];

for i=1:18
    k_real = [k_real k(10^(-i), a, b)];
    k_teor = [k_teor log2((b-a)/10^(-i))];
    
end


disp(k_real)
disp(k_teor)

semilogx(epsilons, k_real, ".", epsilons, k_teor, "r")


function ret = k(eps, a, b)
    if(f(a)*f(b) > 0)
        disp("Zle wartosci początkowe!")
    end

    x = (a+b)/2;
    kk = 0;
    while abs(f(x)) > eps
        kk = kk + 1;
        if(f(x) * f(a) > 0)
            a = x;
        end
        if(f(x) * f(b) > 0)
            b = x;
        end
        x = (a+b)/2;
        
    end
    % disp(x)
    ret = kk;
end


function ret = f(x)
    ret = x^3 - 2* x^2 + 2;
end