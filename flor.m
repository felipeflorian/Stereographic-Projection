C = [15,0]; %Centro
r = 4; %Radio
th = 0:pi/50:2*pi; %Intervalo
%Parametrizacion 
x = r*sin(4*th).*cos(th);
y = r*sin(4*th).*sin(th);
n= 1; %Numero de iteraciones

%Proyeccion sobre esfera de Riemann
proyeccion(x,y,C,n)

%Las definiciones de los parametros se mantienen.
C = [10,0];
r = 1;
x = r*sin(4*th).*cos(th);
y = r*sin(4*th).*sin(th);
n = 4;

proyeccion(x,y,C,n)

C = [1,0];
th = 0:pi/50:2*pi;
r = 0.1;
x = r*sin(4*th).*cos(th);
y = r*sin(4*th).*sin(th);
n = 4;

proyeccion(x,y,C,n)


