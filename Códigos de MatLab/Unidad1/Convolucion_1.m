clear
close all 
 disp("Convolución de señales")
 t1=input("Ingresa los el tiempo inicial : ");
 t2=input("Ingresa el tiempo final : ");
 dt=0.01;
 t=t1:dt:t2;
 x1=input('Ingresa la primera señal x(t) = ');
 x2=input("Ingresa la segunda señal y(t) = ");
 x2_1=fliplr(x1);
 x3=0.01*conv(x2,x1); %Ejecución de la convolución
 tc=2*t1:dt:2*t2;
 subplot(2,2,1)
 plot(t,x1,'b'),grid
 xlabel('Tiempo(t)');ylabel('x_(t)');title('Gráfica de la señal 1');
 subplot(2,2,2)
 plot(t,x2,'r'), grid
 xlabel('Tiempo(t)');ylabel('x_(t)');title('Gráfica de la señal 2');
 subplot(2,2,3)
 plot(t,x1,'r'), grid
 xlabel('\lambda');ylabel('x_1(\lambda)');title(['Gráfica de ' ...
        'la señal 1 en el dominio de \lambda']);
 subplot(2,2,4)
 plot(t,x2_1,'r'), grid 
 xlabel('\lambda');ylabel('x_2(t-\lambda)');title(['Gráfica de ' ...
        'la señal 2 en el dominio de \lambda']);
 figure 
 plot(tc,x3);grid;
 xg=t1:t2;
 set(gca,'xtick', xg);
 axis([t1,t2,min(x3),max(x3)*1.2])
 xlabel('Tiempo(t)');ylabel('x(t)*y(t)'); title(['Convolución' ...
        ' de la señal x(t) y y(t)']);

