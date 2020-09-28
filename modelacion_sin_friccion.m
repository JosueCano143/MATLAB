%Programación de trayectorias sin fricción 
clear 
initialPositionY = input("Ingresa la altura del volcán:");
initialPositionX = 0;
initialVelocity = [];
shootingAngle = [];
deltaTime = input("Ingresa el delta tiempo:");

for variables = 1:3
    velocity = input("Ingresa la velocidad inicial:");
    initialVelocity(variables) = velocity;
    angle = input("Ingresa el ángulo de disparo:");
    angleInRadians = deg2rad(angle);
    shootingAngle(variables) = angleInRadians;
end

acelerationY = -9.8;
acelerationX = 0;
velocityX = [];
initialVelocityY = [];
col = 1;

for speeds = 1:3
    velX = initialVelocity(1,col)*cos(shootingAngle(1,col));
    velocityX(speeds) = velX;
    velY = initialVelocity(1,col)*sin(shootingAngle(1,col));
    initialVelocityY(speeds) = velY;
    col = col + 1;
end



time = 0;
vectorx = 0;
vectory = initialPositionY;
vectorx1 = 0;
vectory1 = initialPositionY;
vectorx2 = 0;
vectory2 = initialPositionY;
count = 1;
dataY = initialPositionY;
dataX = 0;
dataY1 = initialPositionY;
dataX1 = 0;
dataY2 = initialPositionY;
dataX2 = 0;
while dataY  > 0 && dataY1 > 0 && dataY2 > 0    
    xlabel('altura')
    ylabel('distancia')
    title('tiro parabólico')
    vectorx = [vectorx dataX];
    vectory = [vectory dataY];
    
    vectorx1 = [vectorx1 dataX1];
    vectory1 = [vectory1 dataY1];
    
    vectorx2 = [vectorx2 dataX2];
    vectory2 = [vectory2 dataY2];
    
   
    plot(vectorx,vectory,'b:+')
    plot(vectorx1,vectory1,'g:+')
    plot(vectorx2,vectory2,'r:+')
    hold all
    
    count = count + 1;
    time = time + deltaTime;
    
    initialVelocityY(1,1) = initialVelocityY(1,1) + (acelerationY * time);
    initialVelocityY1(1,2) = initialVelocityY(1,2) + (acelerationY * time);
    initialVelocityY2(1,3) = initialVelocityY(1,3) + (acelerationY * time);
    
    dataX = vectorx(1,count) + deltaTime * velocityX(1,1);
    dataY = vectory(1,count) + deltaTime * initialVelocityY(1,1);
    
    dataX1 = vectorx1(1,count) + deltaTime * velocityX(1,2);
    dataY1 = vectory1(1,count) + deltaTime * initialVelocityY1(1,1);
    
    dataX2 = vectorx2(1,count) + deltaTime * velocityX(1,3);
    dataY2 = vectory2(1,count) + deltaTime * initialVelocityY2(1,1);
    
end





