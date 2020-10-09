function r = Raicesdepolinomios(A)
    ti = A(end); % T�rmino independiente 
    Ds = divisors(ti); % Obtener los divisores
    Ds = [Ds Ds*-1]; % Divisores positivos y negativos 
    r = []; % Guardar las ra�ces
    C(1) = A(1); % El primer elemento que no cambia
    
    for i=1 : length(Ds) % Es por cada divisor
        Div = Ds(i); % Tomar un divisor
        C(2) = (Div * A(1)); % Primera operaci�n (multiplicaci�n)
        for j=2 : length(A) 
            C(j) = (C(j)+A(j)); % Suma 
            C(j+1) = (Div * C(j)); % Multiplicaci�n
        end
        %C(end) = []; % Se elimina la �ltima multiplicaci�n
        if C(end)==0
            r = [r; Div]; % Agregar el divisor a la ra�z
            C(end) = []; % Se elimina el cero de los nuevos coeficientes
            A = C; %  
        end
    end    
end
