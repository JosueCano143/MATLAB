% Josue Salvador Cano Martinez
% A00829022
% Regresión Lineal Ajuste Polinomial
% 04/06/2020

%% Sección para la curva 1

% Lectura de datos de entrenamiento
Matriz = readmatrix('PuntosEntrenaCurva1.csv');
% Guardar valores para 'x' & 'y'
x = Matriz(1,:);
y = Matriz(2,:);

% Lectura de datos de prueba
Matriz1 = readmatrix('PuntosPruebaCurva1.csv');
% Guardar valores para 'x2' & 'y2'
x2 = Matriz1(1,:);
y2 = Matriz1(2,:);

% Graficar nube de datos 'x' contra 'y'
plot(x,y,'o')
hold on

%Calcular polinomio de ajuste 
p = polyfit(x,y,2);
% Guardar en 'yy' la evaluación del polinomio en cada 'x'
yy = polyval(p,x);

% Graficar polinomio de ajuste respecto a 'x'
plot(x,yy,'-')
hold on

%Calcular error cuadrático medio de 'y-yy'
error = mse(y-yy);
fprintf('Error cuadrático medio datos de entrenamiento: %d \n',error);

% Graficar nube de datos 'x2' contra 'y2'
plot(x2,y2,'o')
hold on

% Guardar en 'yy2' la evaluación polinomio en cada punto de 'x2'
yy2 = polyval(p,x2);

% Graficar polinomio de ajuste
plot(x2,yy2,'-')
hold on

% Calcular error cuadrático medio 'y2-yy2'
error2 = mse(y2-yy2);
fprintf('Error cuadrático medio datos de prueba: %d \n',error2);

%% Sección para la curva 2

% Lectura de datos de entrenamiento
Matriz = readmatrix('PuntosEntrenaCurva2.csv');
% Guardar valores para 'x' & 'y'
x = Matriz(1,:);
y = Matriz(2,:);

% Lectura de datos de prueba
Matriz1 = readmatrix('PuntosPruebaCurva2.csv');
% Guardar valores para 'x2' & 'y2'
x2 = Matriz1(1,:);
y2 = Matriz1(2,:);

% Graficar nube de datos 'x' contra 'y'
plot(x,y,'o')
hold on

%Calcular polinomio de ajuste 
p = polyfit(x,y,4);
% Guardar en 'yy' la evaluación del polinomio en cada 'x'
yy = polyval(p,x);

% Graficar polinomio de ajuste respecto a 'x'
plot(x,yy,'-')
hold on

%Calcular error cuadrático medio de 'y-yy'
error = mse(y-yy);
fprintf('Error cuadrático medio datos de entrenamiento: %d \n',error);

% Graficar nube de datos 'x2' contra 'y2'
plot(x2,y2,'o')
hold on

% Guardar en 'yy2' la evaluación polinomio en cada punto de 'x2'
yy2 = polyval(p,x2);

% Graficar polinomio de ajuste
plot(x2,yy2,'-')
hold on

% Calcular error cuadrático medio 'y2-yy2'
error2 = mse(y2-yy2);
fprintf('Error cuadrático medio datos de prueba: %d \n',error2);