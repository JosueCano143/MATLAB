% Entregable 1: Modelación de campo magnético en 2D.

%   Integrantes del Equipo:
%  Esthela Sofía Cedillo Moreno     A00828420
%  Josue Salvador Cano Martinez     A00829022
%  Juan CarlosTriana Vela           A00827629
%  Elmer Osiel Ávila Vargas         A00826359
%  Rodrigo Pelayo Ochoa             A00827285

%Datos iniciales
         
radio = 20;             
miu = 4 * pi * 10^-7;  
I = 1 * 10^-3; 
PuntoM = 50;                  

% Dimensiones

minX = -50;
minY = -50;

maxX = 50;
maxY = 50;

x = linspace(minX, maxX, PuntoM);
y = linspace(minY, maxY, PuntoM);

%Creacion de la malla

[XMalla, YMalla] = meshgrid(x,y);

%Obtencion de los campos

r = sqrt(XMalla.^2 + YMalla.^2);

CampoMagneticoY = ((miu * I *radio^ 2)./ (4.* r.^3)).* (3.*XMalla.*YMalla./r.^2);
CampoMagneticoZ = ((miu * I *radio^ 2)./ (4.* r.^3)).* ((3.*(YMalla.^2)./r.^2) - 1);

CampoMagneticoTotal = sqrt(CampoMagneticoY.^2 + CampoMagneticoZ.^2);

%Graficacion

quiver(XMalla, YMalla, CampoMagneticoY ./ CampoMagneticoTotal, CampoMagneticoZ ./ CampoMagneticoTotal)

title("Campo Magnetico 2D de un Dipolo Magnetico")
xlabel('Eje Y')
ylabel('Eje Z')
axis([minX maxX minY maxY])

rectangle('Position', [-radio/2 -.5 radio .5], 'Curvature', [1 1], 'FaceColor', 'r')



