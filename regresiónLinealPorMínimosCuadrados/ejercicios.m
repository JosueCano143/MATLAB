% Josue Salvador Cano Martinez
% A00829022
% Regresión Lineal Mínimos Cuadrados
% 28/05/2020

%% Ejercicio 1

% Lectura de datos
Matriz = readmatrix('ejercicioEjemplo.csv');
% Obtener valores para x & y
x = Matriz(:,1);
y = Matriz(:,2);
% Graficar
plot(x,y,'o')
hold on
% LLamar a la función
[m,b] = funcion(x,y);
y2 = m.*x + b;
plot(x,y2,'g')
% Insertar título, nombres de ejes y leyenda
title(['Regresión lineal. m=',num2str(m),'  b=',num2str(b)])
legend({'Puntos','Línea de regresión'},'Location','northeast','Orientation','vertical')
xlabel('Valores de x')
ylabel('Valores de y')

%% Ejercicio 2

% Lectura de datos
Matriz = readmatrix('PuntosXY.csv');
% Obtener valores para x & y
x = Matriz(1,:);
y = Matriz(2,:);
% Graficar
plot(x,y,'o')
hold on
% LLamar a la función
[m,b] = funcion(x,y);
y2 = m.*x + b;
plot(x,y2,'g')
% Insertar título, nombres de ejes y leyenda
title(['Regresión lineal. m=',num2str(m),'  b=',num2str(b)])
legend({'Puntos','Línea de regresión'},'Location','northwest','Orientation','vertical')
xlabel('Valores de x')
ylabel('Valores de y')

%% Ejercicio 3

% Lectura de datos
Matriz = readmatrix('PuntosXY4.csv');
% Obtener valores para x & y
x = Matriz(1,:);
y = Matriz(2,:);
% Graficar
plot(x,y,'o')
hold on
% LLamar a la función
[m,b] = funcion(x,y);
y2 = m.*x + b;
plot(x,y2,'g')
% Insertar título, nombres de ejes y leyenda
title(['Regresión lineal. m=',num2str(m),'  b=',num2str(b)])
legend({'Puntos','Línea de regresión'},'Location','northeast','Orientation','vertical')
xlabel('Valores de x')
ylabel('Valores de y')

%% Ejercicio 4

% Lectura de datos
Matriz = readmatrix('PuntosXY8.csv');
% Obtener valores para x & y
x = Matriz(1,:);
y = Matriz(2,:);
% Graficar
plot(x,y,'o')
hold on
% LLamar a la función
[m,b] = funcion(x,y);
y2 = m.*x + b;
plot(x,y2,'g')
% Insertar título, nombres de ejes y leyenda
title(['Regresión lineal. m=',num2str(m),'  b=',num2str(b)])
legend({'Puntos','Línea de regresión'},'Location','northwest','Orientation','vertical')
xlabel('Valores de x')
ylabel('Valores de y')

%% Ejercicio 5

% Lectura de datos
Matriz = readmatrix('PuntosXY9.csv');
% Obtener valores para x & y
x = Matriz(1,:);
y = Matriz(2,:);
% Graficar
plot(x,y,'o')
hold on
% LLamar a la función
[m,b] = funcion(x,y);
y2 = m.*x + b;
plot(x,y2,'g')
% Insertar título, nombres de ejes y leyenda
title(['Regresión lineal. m=',num2str(m),'  b=',num2str(b)])
legend({'Puntos','Línea de regresión'},'Location','northwest','Orientation','vertical')
xlabel('Valores de x')
ylabel('Valores de y')