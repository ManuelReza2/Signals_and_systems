%Graficación de funciones singulares 
clc;
clear;
close all 
disp("Graficación de funciones singulares")
t1=input("Ingresa el valor inicial: ");
t2=input("Ingresa el valor final: ");
dt=0.01;
t=t1:dt:t2;
x_t=input("Ingresa la suma de funciones singulares x (t)= ");
plot(t,x_t,'r','LineWidth',1.5)
xlabel('Tiempo(t)'),ylabel('x(t)'), title('Gráfica de la señal')
grid  