% JOSUE SALVADOR CANO MARTINEZ
% A00829022
% 18/04/2020

% FUNCIÓN 1

syms x 
f = (-1/10)*x^2+3;
b = -15:0.1:15;
y = subs(f,b); % Evaluando la función 
plot(b,y, 'k')
grid on
hold on 

xi = 7;
error = 10^(-10);
fdx = diff(f); % Obtenemos la derivada
[r, xi, iter] = NewtonR(f, fdx, xi, error);
% Imprimir resultados
fprintf('El valor de y es = %d\n',r)
fprintf('El valor de x es = %d\n',xi)
fprintf('Las iteraciones son = %d\n',iter)

plot(xi,r,'*r')
axis([-10 10 -5 5])
title(['El valor de x es = ' num2str(xi)])

%% FUNCIÓN 2

syms x 
f = cos(x)-x^3;
b = -3:0.1:4;
y = subs(f,b); % Evaluando la función 
plot(b,y, 'k')
grid on
hold on 

xi = 1;
error = 10^(-10);
fdx = diff(f); % Obtenemos la derivada
[r, xi, iter] = NewtonR(f, fdx, xi, error);
% Imprimir resultados
fprintf('El valor de y es = %d\n',r)
fprintf('El valor de x es = %d\n',xi)
fprintf('Las iteraciones son = %d\n',iter)

plot(xi,r,'*r')
axis([-5 5 -5 5])
title(['El valor de x es = ' num2str(xi)])

%% FUNCIÓN 3

syms x 
f = (x^3)+x+16;
b = -6:0.1:6;
y = subs(f,b); % Evaluando la función 
plot(b,y, 'k')
grid on
hold on 

xi = -1;
error = 10^(-10);
fdx = diff(f); % Obtenemos la derivada
[r, xi, iter] = NewtonR(f, fdx, xi, error);
% Imprimir resultados
fprintf('El valor de y es = %d\n',r)
fprintf('El valor de x es = %d\n',xi)
fprintf('Las iteraciones son = %d\n',iter)

plot(xi,r,'*r')
axis([-5 5 -5 5])
title(['El valor de x es = ' num2str(xi)])

%% Función 4
syms x 
f = (x^4)+2*x-1;
b = -2:0.1:4;
y = subs(f,b); % Evaluando la función 
plot(b,y, 'k')
grid on
hold on 

xi = 1;
error = 10^(-10);
fdx = diff(f); % Obtenemos la derivada
[r, xi, iter] = NewtonR(f, fdx, xi, error);
% Imprimir resultados
fprintf('El valor de y es = %d\n',r)
fprintf('El valor de x es = %d\n',xi)
fprintf('Las iteraciones son = %d\n',iter)

plot(xi,r,'*r')
axis([-4 4 -4 4])
title(['El valor de x es = ' num2str(xi)])
