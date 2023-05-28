n=-19:2:19; %Número de iteraciones
Cn=2./(n.^2*pi^2).*(pi*n.*sin(n*pi/2)-2-2*j*sin(n*pi/2));
nw=n*pi/4; %Obtencion de los armónicos 
i=abs(Cn); %Magnitud 
par=zeros(1,20);
stem(nw,i) %Gráfica armonicos impares
hold 
stem(n,par)%Gráfica armonicos pares 
par=zeros(1,20);
title("Espectro de Magnitud de x_1(t)"), xlabel("Tiempo(t)");
ylabel("abs(x_1(t)");
grid on 



