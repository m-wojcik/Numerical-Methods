% zad 9

A = [1, 1; 0, -1];
u = [1;1];
u = u/norm(u);
k = 7;

disp("Wektor poczatkowy: ")
disp(u)

for i=1:k
    x = A*u;
    u = x/norm(x);
    disp("Iteracja " + i + ": ") 
    disp(u)
end

% metoda nie działa, bo A*A = I, czyli będą na zmianę dwa wektory
disp("Nie działa bo A^2 = I: ")
disp(A*A)
