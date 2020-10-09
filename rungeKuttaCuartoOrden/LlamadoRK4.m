% Josue Salvador Cano Martinez
% A00829022
% Método Runge-Kutta (Cuarto orden)
% 21/05/2020

%% Ejercicio 1

f = @(x,y) -y + sin(x);
a=4; b=9.6; y0=-1; h=0.1;
% Llamado a la función (aproximación)
[x,y] = RK4(f,a,b,y0,h); 
hold on;
plot(x,y,'b')
% Exacta
x2 = a:h:b;
y2 = 1.5.*exp(-x) + 0.5.*sin(x) - 0.5.*cos(x);
plot (x2, y2, 'r')
% Insertar título, nombres de ejes y leyenda
title('Método Runge Kutta Cuarto Orden')
legend({'Aproximación','Exacta'},'Location','north','Orientation','vertical')
xlabel('x')
ylabel('y')
% Imprimir resultados
disp ('    Timepo    Aprox     Exacta   Diferencia');
disp([x' y' y2' (y2-y)'])
disp(['Promedio de la diferencia es: ' num2str(abs(mean(y2'-y')))])

%% Ejercicio 2

f = @(x,y) y * tan(x) + x;
a=0; b=3; y0=10; h=0.1;
% Llamado a la función (aproximación)
[x,y] = RK4(f,a,b,y0,h); 
hold on;
plot(x,y,'r')
% Exacta
x2 = a:h:b;
y2 = x.*tan(x) + 2.*sec(x).*6 + 1;
plot (x2, y2, 'b')
% Insertar título, nombres de ejes y leyenda
title('Método Runge Kutta Cuarto Orden')
legend({'Aproximación','Exacta'},'Location','northwest','Orientation','vertical')
xlabel('x')
ylabel('y')
% Imprimir resultados
disp ('    Timepo    Aprox     Exacta   Diferencia');
disp([x' y' y2' (y2-y)'])
disp(['Promedio de la diferencia es: ' num2str(abs(mean(y2'-y')))])

%% Ejercicio 3

f = @(x,y) (3*x/y) - (x*y);
a=0; b=2.5; y0=2; h=0.1;
% Llamado a la función (aproximación)
[x,y] = RK4(f,a,b,y0,h); 
hold on;
plot(x,y,'bo')
% Exacta
x2 = a:h:b;
y2 = sqrt(3 + exp(-x.^2));
plot (x2, y2, 'm')
% Insertar título, nombres de ejes y leyenda
title('Método Runge Kutta Cuarto Orden')
legend({'Aproximación','Exacta'},'Location','southwest','Orientation','vertical')
xlabel('x')
ylabel('y')
% Imprimir resultados
disp ('    Timepo    Aprox     Exacta   Diferencia');
disp([x' y' y2' (y2-y)'])
disp(['Promedio de la diferencia es: ' num2str(abs(mean(y2'-y')))])

%% Ejercicio 4

f = @(x,y) y * cos(x);
a=0; b=4; y0=1; h=0.1;
% Llamado a la función (aproximación)
[x,y] = RK4(f,a,b,y0,h); 
hold on;
plot(x,y,'bo')
% Exacta
x2 = a:h:b;
y2 = exp(sin(x));
plot (x2, y2, 'g')
% Insertar título, nombres de ejes y leyenda
title('Método Runge Kutta Cuarto Orden')
legend({'Aproximación','Exacta'},'Location','southwest','Orientation','vertical')
xlabel('x')
ylabel('y')
% Imprimir resultados
disp ('    Timepo    Aprox     Exacta   Diferencia');
disp([x' y' y2' (y2-y)'])
disp(['Promedio de la diferencia es: ' num2str(abs(mean(y2'-y')))])
