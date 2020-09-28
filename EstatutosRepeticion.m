%Problema 4
%Encontrar el menor valor de u conjunto de n valores dados
resp = 1;
while (resp ~= 3)
    fprintf("1. Ejecutar ejercicio 1\n")
    fprintf("2. Ejecutar ejercicio 2\n")
    fprintf("3. Ejecutar ejercicio 3\n")
    fprintf("4. Salir\n")
    fprintf("¿cuál quieres ejecutar?\n")
    resp = input("Opción seleccionada");
    if resp == 1
        ejercicio1()
    elseif resp == 2
        ejercicio2()
    elseif resp == 3
        cuantos = input("Cuántos términos de la serie vas a evaluar:");
        ejercicio3(cuantos)
    end
   
end

function[]=ejercicio1()
    n = input("¿Cuántos números quieres analizar?");
    menor = intmax('int8');
    for cualvoy =1:n
        numero = input("Teclea un número:");
        if numero < menor
            menor = numero;
        end
    end
    fprintf("El número menor es %d\n", menor)
end

%Problema 8
%Dado un número de entrada, diga si este número es primo
function[]=ejercicio2()
  num = input("Teclea el número a analizar");
  divisor=2;
  esPrimo = true;
  while esPrimo && divisor <= fix(num/2)
      if mod(num,divisor) == 0
          esPrimo=false;
      end
      divisor = divisor+1;
  end
  if esPrimo
      fprintf("El número %i, es primo\n", num)
  else
      fprintf("El número %i, no es primo\n", num)
  end
end

%Programa serie
%Soluciona la siguiente serie 1/3+3/4+4/7...
function[]=ejercicio3(cuantos)
num = 1;
den = 3;
suma = 0;
for cual = 1:cuantos
    suma = suma + num/den;
    temporal = num;
    num = den;
    den = temporal+den;
end
fprintf("El resultado de la serie es %5.2f",suma)
end
