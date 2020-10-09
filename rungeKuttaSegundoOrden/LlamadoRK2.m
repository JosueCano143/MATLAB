% Josue Salvador Cano Martinez
% A00829022
% M�todo Runge-Kutta (Segundo orden)
% 11/05/2020

%% Ejercicio 1

f = @(t,y) t/sqrt(1+t^2) + (0*y);
a=0; b=10; y0=10; h=0.1;
%Llamado a la funci�n
[x,y] = RK2(f,a,b,y0,h); 
plot(x,y,'.b')
title('M�todo Runge Kutta Segundo Orden')
legend({'Aproximaci�n'},'Location','north','Orientation','horizontal')
xlabel('Tiempo')
ylabel('x')

%% Ejercicio 2

f = @(t,y) sin(y) + (0*t);
a=0; b=4; y0=1; h=0.01;
%Llamado a la funci�n
[x,y] = RK2(f,a,b,y0,h); 
plot(x,y,'.r')
title('M�todo Runge Kutta Segundo Orden')
legend({'Aproximaci�n'},'Location','northeast','Orientation','horizontal')
xlabel('x')
ylabel('y')

%% Ejercicio 3

f = @(t,y) 20 + 7*sin(2*t) + (0*y);
a=0; b=5; y0=15; h=0.01;
%Llamado a la funci�n
[x,y] = RK2(f,a,b,y0,h); 
plot(x,y,'.m')
title('M�todo Runge Kutta Segundo Orden')
legend({'Aproximaci�n'},'Location','north','Orientation','horizontal')
xlabel('x')
ylabel('y')

%% Ejercicio 4

f = @(x,y) 3*y - 4*exp(-x) + (0*y);
a=0; b=10; y0=1; h=0.1;
%Llamado a la funci�n
[x,y] = RK2(f,a,b,y0,h); 
plot(x,y,'r')
hold on

%Graficaci�n de la exacta
f = @(x) exp(-x); 
plot(x,y,'.b')

title('M�todo Runge Kutta Segundo Orden')
legend({'Aproximaci�n', 'Exacta'},'Location','north','Orientation','vertical')
xlabel('x')
ylabel('y')