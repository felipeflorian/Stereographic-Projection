C = [10,0]; %Centro
r = 3; %Radio
th = 0:pi/50:2*pi; %Intervalo
%Parametrizacion circulos
x = r*cos(th); 
y = r*sin(th);
n = 1; %Numero iteraciones

for k = 1:5
       %Proyeccion Esfera de Riemann
       proyeccion(x,y,C,n)
       if r > 1
           %Nuevo Radio
            rnew = r-0.7;
       else
            rnew = r;
       end 
       %Nuevo Centro
       Cnew = [C(1)-r, C(2)];
       %Cambio de parametros
       C = Cnew;
       r = rnew;
       x = r*cos(th);
       y = r*sin(th);
end

%Se conservan las definiciones presentadas anteriormente
C = [1,0];
r = 0.1;
th = 0:pi/50:2*pi;
x = r*cos(th);
y = r*sin(th);
n = 4;

proyeccion(x,y,C,n)


