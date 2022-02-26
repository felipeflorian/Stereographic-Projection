r1 = 1; %Radio 1
r2 = 1/6; %Radio 2

C = [5,0]; %Centro
th = 0:pi/50:2*pi; %Intervalo
%Parametrizacion Hipocicloide
x = (r1-r2)*cos(th) + r2*cos(th*(1-(r1/r2)));
y = (r1-r2)*sin(th) + r2*sin(th*(1-(r1/r2)));
n = 9; %Numero de iteraciones

%Proyeccion sobrer esfera de Riemann
proyeccion(x,y,C,n)

