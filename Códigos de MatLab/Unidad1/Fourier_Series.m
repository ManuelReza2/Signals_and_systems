%Graficación de la función original 
clc;
clear;
close all 
disp("Graficación de funciones singulares")
t1=input("Ingresa el límite superior de t: ");
t2=input("Ingresa el límite inferior de t: ");
dt=0.01;
t=0:dt:t1;
x_t=input("Ingresa la suma de funciones singulares x (t)= ");
subplot(1,2,1)
plot(t,x_t,'r','LineWidth',1.5)
xlabel('Tiempo(t)'),ylabel('x(t)'), title('Gráfica de la señal en un periodo T_0')
grid  

%Graficación de la serie de Fourier 
t=-t1:0.01:t1; 
n1=input("Ingresa el número de iteraciones: ");
dn=input("Ingresa el espaciamiento de las iteraciones: ");
n=-n1:dn:n1; %Definicón del número de armónicos
[mt,mn]=meshgrid(t,n);
w=input("Ingresa la frecuencia fundamental de la serie: ");
Cn=input("Ingresa el valor de los coeficientes de la serie "); %Coeficientes 
e1=exp(1i.*mn.*mt*w); %Función exponencial correspondiente
x_1=e1.*Cn; %Valor de un armónico 
x1=sum(x_1); %Serie de Fourier
subplot(1,2,2)
plot(t,x1,'b'), grid, 
title('Serie de Fourier de x(t)'), xlabel('Tiempo(t)'),
ylabel('x(t)')  