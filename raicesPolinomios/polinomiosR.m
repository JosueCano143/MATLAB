% Josue Salvador Cano Martinez
% A00829022

% PRIMER POLINOMIO

p1 = @(x) x.^3 - 6.*x.^2 + 11.*x -6;
x = -1:0.1:5;
plot(x,p1(x))
grid on
hold on

A = [1 -6 11 -6];
r = RaicesdePolinomios(A);
disp('Las raices son = ')
disp(r)

% Evaluar las raíces con el polinomio
a = p1(r);
%Graficar raíces 
plot(r,a,'or')

%% SEGUNDO POLINOMIO

p1 = @(x) x.^3 - x.^2 - 4.*x + 4;
x = -3:0.1:5;
plot(x,p1(x))
grid on
hold on

A = [1 -1 -4 4];
r = RaicesdePolinomios(A);
disp('Las raices son = ')
disp(r)

% Evaluar las raíces con el polinomio
a = p1(r);
%Graficar raíces 
plot(r,a,'or')

%% TERCER POLINOMIO

p1 = @(x) -x.^4 + 10.*x.^2 - 9;
x = -5:0.1:5;
plot(x,p1(x))
grid on
hold on

A = [-1 0 10 0 -9];
r = RaicesdePolinomios(A);
disp('Las raices son = ')
disp(r)

% Evaluar las raíces con el polinomio
a = p1(r);
%Graficar raíces 
plot(r,a,'or')

%% CUARTO POLINOMIO

p1 = @(x) -2.*x.^3 + x.^2 - 13.*x + 6;
x = -5:0.1:5;
plot(x,p1(x))
grid on
hold on

A = [2 1 -13 6];
r = RaicesdePolinomios(A);
disp('Las raices son = ')
disp(r)

% Evaluar las raíces con el polinomio
a = p1(r);
%Graficar raíces 
plot(r,a,'or')