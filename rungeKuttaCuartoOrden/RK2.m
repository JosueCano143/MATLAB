% Josue Salvador Cano Martinez
% A00829022
% M�todo Runge-Kutta (Segundo orden)
% 11/05/2020

function [x,y] = RK2(f,a,b,y0,h)
    x = a:h:b;
    n = length(x);
    y = zeros(1,n);
    y(1) = y0;
    for i = 1:n-1
        k1 = h * f(x(i),y(i));
        k2 = h * f(x(i)+h/2, y(i)+1/2*k1);
        y(i+1) = y(i) + k2;
    end
end