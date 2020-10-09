% Josue Salvador Cano Martinez
% A00829022
% Regresión Lineal Mínimos Cuadrados
% 28/05/2020

function [m,b] = funcion(x,y)
    sumX = 0;
    sumY = 0;
    sumXY = 0;
    sumXX = 0;
    
    n = numel(x);
    
    for iK = 1:n
        sumX = sumX + x(iK);
        sumY = sumY + y(iK);
        sumXY = sumXY + (x(iK) * y(iK));
        sumXX = sumXX + (x(iK)^2);        
    end
    
    m = ((sumXY)-((sumX*sumY)/n))/(sumXX-((sumX^2)/n));
    b = (sumY/n) - (m*(sumX/n));
end

