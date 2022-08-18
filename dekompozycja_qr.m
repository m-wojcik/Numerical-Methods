% zad 10

clc

A = [3, 7; 4, 4];
disp("Macierz wejściowa: ")
disp(A)

[Q_m, R_m] = myQR(A);
disp("Dekompozycja: ")
disp("Q: ")
disp(Q_m)
disp("R: ")
disp(R_m)


function [Q, R] = myQR(A)
    N = size(A,1);
    H = zeros(N,N,N-1);
    for i=1:N-1
        v = A(:,i);
        e_tmp = eye(N);
        e = e_tmp(:,i);
        for j=1:i-1
            v(j,1)=0;
        end

        a = norm(v);
        y = v + a*e;
        yt_y = transpose(y)*y; %skalar
        y_yt = y*transpose(y); %macierz

        H(:,:,i) = eye(N) - 2/(yt_y) * y_yt;
        disp("Iteracja " + i)
        disp(H(:,:,i))
        
        A = H(:,:,i)*A;
    end

    HHH = eye(N);
    for ii=1:N-1
        HHH = HHH*H(:,:,ii);
    end

    Q = HHH;
    R = A;
end
