function proyeccion(x,y,C,n)
    figure(1)
    figure(2)
    [X,Y,Z] = sphere(); %Esfera de Radio 1
    surf(X,Y,Z,'facecolor', 'w', 'FaceAlpha', 0.5)
    hold on
    d = sqrt(C(1).^2 + C(2).^2); %Distancia desde el origen al centro
    k = pi/6; %Ángulo 
    for i=1:n
        for j=1:12
            %For que gráfica una sucesion de figuras iguales desplazando
            %el centro C 360 grados hasta su posicion inicial
            x_c= x + C(1);%Parametrizacion en x
            y_c= y + C(2);%Parametrizacion en y
            figure(1)
            plot(x_c,y_c,'blue')%Gráfica en el plano complejo
            title('Plano Complejo')
            hold on
            figure(2)
            riemann(x_c, y_c)%Proyeccion de x_c, y_c sobre la esfera de Riemann
            title('Proyección Esfera de Riemann')
            hold on
            theta = angle(C(1) + C(2)*1i);
            new_theta = theta + k;%Nuevo angulo
            C = [d*cos(new_theta), d*sin(new_theta)];%Nuevo centro
        end
        Cnew = [C(1)-(d/n), C(2)];%Se resta en la coordenada en x a para cambiar el centro de posicion
        C= Cnew;%Nuevo centro
        theta = angle(C(1) + C(2)*1i);
        d = sqrt(C(1).^2+C(2).^2);%Nueva distancia
    end
end