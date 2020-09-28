clc, clear
close all;
syms x;


main();

function [funcion] = retornaFuncion()
syms x;
y = [2900; 800; 1500; 1800];

z = [1,100^1,100^2,100^3
    1,2600^1,2600^2,2600^3
    1,700^1,700^2,700^3                                
    1,2000^1,2000^2,2000^3];

coeficientes = z^-1 * y;
coeficientes = coeficientes';
funcion = coeficientes(4)*x^3 + coeficientes(3)*x^2 + coeficientes(2)*x + coeficientes(1);
end

function[] = main()
syms x;
puntoX = 886;
puntox = 1793;


[func] = retornaFuncion();
hold on;
grid on;
tangente(func, puntoX);
hold on;
tangente(func, puntox);
hold on;
fplot(func,[100 2600]);
hold on;
[x,y] = maximosyminimos;
plot(x(1),y(1),'o','MarkerFaceColor','red');
hold on;
plot(x(2),y(2),'o','MarkerFaceColor','red');
hold on;

resp = input("Desea simular en el punto minimo o en el maximo?\n", 's');
if(resp == "minimo")
    xlim([700 1200]);
    hold on;
    ylim([1300 1600]);
    hold on;
    title("Simulacion en el minimo")
    fplot(func,[700 1200]);
    hold on;
    plot(x(1),y(1),'o','MarkerFaceColor','red');
   
elseif(resp == "maximo")
    title("Simulacion en el maximo")
    fplot(func,[1700 2200]);
    hold on;
    plot(x(2),y(2),'o','MarkerFaceColor','red');
    hold on;
    xlim([1700 2200]);
    hold on;
    ylim([1700 1900]);
    hold on;
    
    
else
    fprintf("Por favor ingrese la sitaxis como se pide")
    main();
end
end

function [raicesX,raicesY] = maximosyminimos()
syms x;
ecuacion = retornaFuncion();
primeraDerivada = diff(ecuacion);
coeficientes = coeffs(primeraDerivada);
coeficientes = fliplr(coeficientes);
raicesX = vpa(roots(coeficientes));
raicesY = vpa(subs(ecuacion, {x}, raicesX));
end


function [] = tangente(ecuacion, puntoX)

syms x;

primerValor = subs(ecuacion, {x}, puntoX);
derivada =  diff(ecuacion);
segundoValor = subs(derivada, {x}, puntoX);
tercerValor = x - puntoX;
ecTan = segundoValor*tercerValor + primerValor;

fplot(ecTan)
hold on;
fplot(ecuacion,[0 3000])
hold on; 
end