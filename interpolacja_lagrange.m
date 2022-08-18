% zad 12

xs = [0,2,3];
ys = [7,11,28];

x = 1;

disp("f(1) = " + f(x, xs, ys))


function y=f(x, Xs, Ys)
    n = size(Xs,2);
    sum1 = 0;
    for i=1:n
        sum2 = 1;
        for j=1:n
            if j~=i
                sum2 = sum2 * (x - Xs(j))/(Xs(i)-Xs(j));
            end
        end
        sum1 = sum1 + sum2*Ys(i);
    end
    y = sum1;
end