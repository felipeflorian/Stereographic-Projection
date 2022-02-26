N = 5000;
t = linspace(0,20*pi,N); %Intervalo
C = [5,0];%Centro

%Parametrizacion
x = sin(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);
y = cos(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);

%Normalizacion de los parametros
x = x./max(abs(x));
y = y./max(abs(y));

n = 2; %Numero de iteraciones

%Proyeccion sobre esfera de Riemann
proyeccion(x,y,C,n)

%Proyeccion de la Curva Mariposa sin cambio del centro es decir en [0,0]
figure(1)
plot(x,y)
figure(2)
[X,Y,Z] = sphere();
surf(X,Y,Z,'facecolor', 'w', 'FaceAlpha', 0.5)
hold on
riemann(x,y)
