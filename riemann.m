function riemann(X,Y)
    %Parametrizacion de los valores
    X_1 = (2*X)./(X.^2 + Y.^2 + 1);
    X_2 = (2*Y)./(X.^2 + Y.^2 + 1);
    X_3 = (X.^2 + Y.^2 - 1)./(X.^2 + Y.^2 + 1);
    %Proyeccion
    plot3(X_1, X_2, X_3,'blue','LineWidth',3)
end
