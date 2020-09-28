%Integrantes del Equipo 1:
%Oscar Sebastián Sánchez Morales (A00827175) 20%
%Josue Salvador Cano Martinez (A00829022)  20%
%Carolina Janette Gómez Vargas (A01283726)  20%
%Ana Sofía Gutiérrez Aldape (A00827191)  20%
%Ángel Alan Güereña Orozco (A01652495)  20%
%Total = 100%

clear
altura = input("Ingrese la altura del volcán: ");
velocidad1 = input("Ingrese la velocidad del primer proyectil: ");
angulo1 = input("Ingrese el ángulo del primer proyectil: ");
masa1 = input("Ingrese la masa del primer proyectil: ");
velocidad2 = input("Ingrese la velocidad del segundo proyectil: ");
angulo2 = input("Ingrese el ángulo de disparo del segundo proyectil: ");
masa2 = input("Ingrese la masa del segundo: ");
velocidad3 = input("Ingrese la velocidad del tercer proyectil: ");
angulo3 = input("Ingrese el ángulo del tercer proyectil: ");
masa3 = input("Ingrese la masa del  tercer proyectil: ");
timeStep = input("Ingrese el paso del tiempo: ");
k = input("Ingrese el coeficiente de arrastre: ");  

%Conversión de ángulos y velocidades
angulo1 = deg2rad(angulo1);
velocidadx(1,1) = velocidad1 * cos(angulo1);
velocidady(1,1) = velocidad1 * sin(angulo1);

angulo2 = deg2rad(angulo2);
velocidadx(1,2) = velocidad2 * cos(angulo2);
velocidady(1,2) = velocidad2 * sin(angulo2);

angulo3 = deg2rad(angulo3);
velocidadx(1,3) = velocidad3 * cos(angulo3);
velocidady(1,3) = velocidad3 * sin(angulo3);

t = 0;

%Sin fricción
vy(1,1) = velocidady(1,1);
vy(1,2) = velocidady(1,2);
vy(1,3) = velocidady(1,3);
y(1,1) = altura;
x(1,1) = 0;
y(2,1) = altura;
x(2,1) = 0;
y(3,1) = altura;
x(3,1) = 0;

%Con fricción
vyf(1,1) = velocidady(1,1);
vyf(2,1) = velocidady(1,2);
vyf(3,1) = velocidady(1,3);
vxf(1,1) = velocidadx(1,1);
vxf(2,1) = velocidadx(1,2);
vxf(3,1) = velocidadx(1,3);
yf(1,1) = altura;
xf(1,1) = 0;
yf(2,1) = altura;
xf(2,1) = 0;
yf(3,1) = altura;
xf(3,1) = 0;
ay(1,1) = -9.8;
ay(2,1) = -9.8;
ay(3,1) = -9.8;
ax(1,1) = 0;
ax(2,1) = 0;
ax(3,1) = 0;

cont1 = 2;
annotation('textbox', [.91 .51 .23 .31], 'string' ,'X1 sf : ');
annotation('textbox', [.91 .51 .20 .28], 'string' ,'Y1 sf : ');
annotation('textbox', [.91 .51 .17 .25], 'string' ,'VX1 sf : ');
annotation('textbox', [.91 .51 .14 .22], 'string' ,'VY1 sf : ');
annotation('textbox', [.91 .51 .11 .19], 'string' ,'X1 cf : ');
annotation('textbox', [.91 .51 .8 .16], 'string' ,'Y1 cf : ');
annotation('textbox', [.91 .51 .5 .13], 'string' ,'VX1 cf : ');
annotation('textbox', [.91 .51 .2 .10], 'string' ,'VY1 cf : ');


x1sf = annotation('textbox', [.91 .51 .20 .30], 'string' ,num2str(x(1,1)));
y1sf = annotation('textbox', [.91 .51 .17 .27], 'string' ,num2str(y(1,1)));
vxsf = annotation('textbox', [.94 .51 .17 .25], 'string' ,num2str(velocidadx(1,1)));
vysf = annotation('textbox', [.94 .51 .17 .22], 'string' ,num2str(vy(1,1)));
x1cf = annotation('textbox', [.94 .51 .17 .19], 'string' ,num2str(xf(1,1)));
y1cf = annotation('textbox', [.94 .51 .17 .16], 'string' ,num2str(yf(1,1)));
vxcf = annotation('textbox', [.94 .51 .17 .13], 'string' ,num2str(vxf(1,1)));
vycf = annotation('textbox', [.94 .51 .17 .10], 'string' ,num2str(vyf(1,1)));

if(altura > 0 && altura <= 500)
    ylim([0, 1000]);
    hold on;
elseif(altura > 500 && altura <= 1000)
    ylim([0, 1500]);
    hold on;
elseif(altura > 1000 && altura <= 3000)
    ylim([0, 4500]);
    hold on;
elseif(altura > 3000 && altura <= 5000)
    ylim([0, 7000]);
    hold on;
elseif(altura > 5000 && altura <= 7000)
    ylim([0, 9000]);
    hold on;
elseif (altura > 9000)
    ylim([0, 12000]);
    hold on;
end




while y(1,cont1-1) > 0 || y(2,cont1-1) > 0 || y(3,cont1-1)> 0 || yf(1,cont1-1) > 0 || yf(2,cont1-1) > 0 || yf(3,cont1-1) > 0 
    
    title('x vs y');
    xlabel("Distancia");
    ylabel('Altura');
    
    delete(x1sf);
    delete(y1sf);
    delete(vxsf);
    delete(vysf);
    delete(x1cf);
    delete(y1cf);
    delete(vxcf);
    delete(vycf);
    
    x1sf = annotation('textbox', [.94 .51 .20 .31] , 'string' ,num2str(x(1,cont1-1)));
    y1sf = annotation('textbox', [.94 .51 .17 .28], 'string' ,num2str(y(1,cont1-1)));
    vxsf = annotation('textbox', [.94 .51 .17 .25], 'string' ,num2str(velocidadx(1,1)));
    vysf = annotation('textbox', [.94 .51 .17 .22], 'string' ,num2str(vy(1,1)));
    x1cf = annotation('textbox', [.94 .51 .17 .19], 'string' ,num2str(xf(1,cont1-1)));
    y1cf = annotation('textbox', [.94 .51 .17 .16], 'string' ,num2str(yf(1,cont1-1)));
    vxcf = annotation('textbox', [.94 .51 .17 .13], 'string' ,num2str(vxf(1,cont1-1)));
    vycf = annotation('textbox', [.94 .51 .17 .10], 'string' ,num2str(vyf(1,cont1-1)));
    
    p1 = plot(x(1,:),y(1,:),'r*');
    hold on;
    p2 = plot(x(2,:),y(2,:),'m*');
    hold on;
    p3 = plot(x(3,:),y(3,:),'g*');
    hold on;
    p4 = plot(xf(1,:),yf(1,:),'r');
    hold on;
    p5 = plot(xf(2,:),yf(2,:),'m');
    hold on;
    p6 = plot(xf(3,:),yf(3,:),'g');
    hold on;
    
    l = legend('primer proyectil sin friccion','segundo proyectil sin friccion','tercer proyectil sin friccion','primer proyectil con friccion','segundo proyectil con friccion','tercer proyectil con friccion');
    pos = get(l, 'Position');
    ht = text(1,1, 'Tiro parabólico');
    set(ht, 'Position',[pos(1)+pos(4)+1, pos(2)+pos(3)], 'VerticalAlignment','bottom', 'HorizontalAlignment','left')
    
    %Proyectil 1
        %Sin Fricción
        if(y(1,cont1-1) <= 0)
            x(1,cont1) = x(1,cont1-1);
            y(1,cont1) = y(1,cont1-1);
        else
            x(1,cont1) = x( 1 , cont1 - 1 ) + timeStep * velocidadx(1,1);
            y(1,cont1) = y( 1 , cont1 - 1 ) + vy(1,1) * timeStep;
            vy(1,1) = velocidady(1,1) + ((-9.8) * (t));
        end
        
        %Con fricción
        if(yf(1,cont1-1) <= 0)
            xf(1,cont1) = xf(1,cont1-1);
            yf(1,cont1) = yf(1,cont1-1);
        else
            ax(1,cont1) = (-(k) * vxf( 1 ,cont1 -1 ))/(masa1);
            ay(1,cont1) = (-(k) * vyf( 1 ,cont1 -1 ))/(masa1) - 9.8;
            
            vxf(1,cont1) = vxf(1,cont1 - 1) + (ax(1,cont1 - 1) * timeStep);
            vyf(1,cont1)= vyf(1,cont1 - 1) + (ay(1,cont1 - 1) * timeStep);
            
            xf(1,cont1) = xf(1,cont1 - 1) + (vxf(1,cont1 - 1) * timeStep);
            yf(1,cont1) = yf(1,cont1 - 1) + (vyf(1,cont1 - 1) * timeStep);
        end
        
        
    %Proyectil 2
    %Sin friccion
        if(y(2,cont1-1) <= 0)
             x(2,cont1) = x(2,cont1-1);
             y(2,cont1) = y(2,cont1-1);
        else

            x(2,cont1) = x( 2 , cont1 - 1 ) + timeStep * velocidadx(1,2);
            y(2,cont1) = y( 2 , cont1 - 1 ) + vy(1,2) * timeStep;
            vy(1,2) = velocidady(1,2) + ((-9.8) * (t));
        end
    %Con fricción
        if(yf(2,cont1-1) <= 0)
            xf(2,cont1) = xf(2,cont1-1);
            yf(2,cont1) = yf(2,cont1-1);
        else
            ax(2,cont1) = (-(k) * vxf( 2 ,cont1 -1 ))/(masa2);
            ay(2,cont1) = (-(k) * vyf( 2 ,cont1 -1 ))/(masa2) - 9.8;
            
            vxf(2,cont1) = vxf(2,cont1 - 1) + (ax(2,cont1 - 1) * timeStep);
            vyf(2,cont1)= vyf(2,cont1 - 1) + (ay(2,cont1 - 1) * timeStep);
            
            xf(2,cont1) = xf(2,cont1 - 1) + (vxf(2,cont1 - 1) * timeStep);
            yf(2,cont1) = yf(2,cont1 - 1) + (vyf(2,cont1 - 1) * timeStep);
        end
    
    %Proyectil 3
    %Sin friccion
        if(y(3,cont1-1) <= 0)
             x(3,cont1) = x(3,cont1-1);
             y(3,cont1) = y(3,cont1-1);
        else
            x(3,cont1) = x( 3 , cont1 - 1 ) + timeStep * velocidadx(1,3);
            y(3,cont1) = y( 3 , cont1 - 1 ) + vy(1,3) * timeStep;
            vy(1,3) = velocidady(1,3) + ((-9.8) * (t));
        end
    %Con fricción
        if(yf(3,cont1-1) <= 0)
            xf(3,cont1) = xf(3,cont1-1);
            yf(3,cont1) = yf(3,cont1-1);
        else
            ax(3,cont1) = (-(k) * vxf( 3 ,cont1 -1 ))/(masa3);
            ay(3,cont1) = (-(k) * vyf( 3 ,cont1 -1 ))/(masa3) - 9.8;
            
            vxf(3,cont1) = vxf(3,cont1 - 1) + (ax(3,cont1 - 1) * timeStep);
            vyf(3,cont1)= vyf(3,cont1 - 1) + (ay(3,cont1 - 1) * timeStep);
            
            xf(3,cont1) = xf(3,cont1 - 1) + (vxf(3,cont1 - 1) * timeStep);
            yf(3,cont1) = yf(3,cont1 - 1) + (vyf(3,cont1 - 1) * timeStep);
        end
    
    t = t + timeStep;
    cont1 = cont1 + 1;
    pause(0.1)
   
end