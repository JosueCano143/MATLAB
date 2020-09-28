r = input('Teclea la cantidad de renglones:');
c = input('Teclea la2 cantidad de columnas:');
mDatos = zeros(r,c);
for ren = 1:r
    for col = 1:c
        mDatos(ren,col)=input("Teclea un valor para la matriz:");
    end
end
disp(mDatos)
sumaPares = 0;
for ren=1:r
    for col=1:c
        if mod(mDatos(ren,col),2)== 0
            sumaPares = sumaPares+mDatos(ren,col);
        end
    end
end
fprintf("La suma de los números pares contenidos en la matriz es: %i\n",sumaPares)

escalar(mDatos)
function[] = escalar(mat)
  [r,c] = size(mat);
  if r == c
      elemento = mat(1,1);
      igual = true;
      reng = 2;
      while igual == true && reng <= r
          if mat(reng,reng) ~= elemento
              igual = false;
          end
          reng = reng+1;
      end
      if igual == true
          fprintf("La matriz es escalar")
      else
          fprintf("La matriz no es escalar")
      end
  else
      fprintf("Error, matriz no cuadrada, por tanto no tiene diagonal principal")
  end
end
