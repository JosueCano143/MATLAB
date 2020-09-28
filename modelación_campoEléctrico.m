clear;
clc;
%Definición de cvariables
orientacion = 1; % Da la orientacion de los cables. 1 es vertical y 0 horizontal
nPuntos = 30;
nCargas = 500;
carga = ones(1,nCargas)*10e-9;
carga(nCargas/2+1:nCargas) = carga(nCargas/2+1:nCargas) * -1;
radioC = 0.05;
l = 10;
%Constante
eps0 = 8.854e-12;
k = 1/(4 * pi * eps0);

%Varillas
if orientacion == 1
    xCargas = ones(1,nCargas);
    xCargas(1:nCargas/2) = xCargas(1:nCargas/2)*-2;
    xCargas(nCargas/2+1 : nCargas) = xCargas(nCargas/2+1:nCargas)*2;
    y1 = -3;
    y2 = 3;
    y3 = -1;
    y4 = 1;
    yCargas1 = linspace(y1,y2,nCargas/2);
    yCargas2 = linspace(y3,y4,nCargas/2);
    yCargas = [yCargas1 yCargas2];
    %Dimensiones del grafico
    minX = -4;
    maxX = 4;
    minY = -4;
    maxY = 4;
elseif orientacion == 0
    yCargas = ones(1,nCargas);
    yCargas(1:nCargas/2) = yCargas(1:nCargas/2)*3;
    yCargas(nCargas/2+1 : nCargas) = yCargas(nCargas/2+1:nCargas)*5;
    x1 = 1;
    x2 = 8;
    x3 = 3;
    x4 = 6;
    xCargas1 = linspace(x1,x2,nCargas/2);
    xCargas2 = linspace(x3,x4,nCargas/2);
    xCargas = [xCargas1 xCargas2];
    %Dimensiones del grafico
    minY = 2;
    maxY = 6;
    minX = 1;
    maxX = 9;
end

%Campos electricos

campoEx = zeros(nPuntos, nPuntos);
campoEy = zeros(nPuntos, nPuntos);

x = linspace(minX,maxX,nPuntos);
y = linspace(minY,maxY,nPuntos);
[Xp,Yp] = meshgrid(x,y);

%Calculo del campo electrico

for i = 1:1:nCargas
	Rx = Xp - xCargas(i);
	Ry = Yp - yCargas(i);
	R = sqrt(Rx.^2 + Ry.^2);
	R3 = R.^3;
	campoEx = campoEx + k .* carga(i) .* Rx ./ R3;
	campoEy = campoEy + k .* carga(i) .* Ry ./ R3;	
end

CampoE_Total = sqrt(campoEx .^2 + campoEy .^2);

quiver(Xp, Yp, campoEx, campoEy) % normalizado
hold on

for i = 1: nCargas/2
    pos1 = [xCargas(i) - radioC, yCargas(i) - radioC, 2*radioC, 2*radioC];
    rectangle('Position',pos1, 'Curvature', [1 1], 'FaceColor', [1 0 0]); 
end

for i = nCargas/2+1 : nCargas
    pos2 = [xCargas(i) - radioC, yCargas(i) - radioC, 2*radioC, 2*radioC];
    rectangle('Position',pos2, 'Curvature', [1 1], 'FaceColor', [0 0 0]); 
end