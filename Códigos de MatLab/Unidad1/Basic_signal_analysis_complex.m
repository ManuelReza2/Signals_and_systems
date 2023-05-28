%Paridad
close all 
disp('Análisis básico de señales')
syms t
X1=input ('Ingresa la función x(t) = ');
X2=input ('Ingresa la función x(-t)= ');
Xe=(X1+X2)/2;
Xo=(X1-X2)/2;
%Calculo de energia y potencia 
energy=int(abs(X1)^2, -t, t);
power=(1/(2*t))*int(abs(X1)^2, -t, t);
energy1=limit(int(abs(X1)^2, -t, t),t,inf);
power1=limit((1/(2*t))*int(abs(X1)^2, -t, t),t,inf);
t=input('Ingresa el intervalo deseado: ');
xi=subs(X1);
x1=double(xi);
x2=fliplr(x1);
xe=(x1+x2)/2; %Parte par
xo=(x1-x2)/2; %Parte impar

if (x1==x2)
    disp ('La función es par')
else
    if (x1==(-x2))
        disp('La función es impar')
    else
        disp ('La función dada no tiene paridad')
        disp((sprintf('La parte par es %s', Xe)))
        disp((sprintf('La parte impar es %s', Xo)))
    end
end
if ((0<energy1 && energy<inf) && power1==0 )
    disp((sprintf('La señal es de energía con E= %s', energy1)))
elseif (energy1==inf && (power1<inf && power1>0))
    disp((sprintf('La señal es de energía con E= %s', power1)))
else 
    disp('La señal no es de energia ni de potencia')
end 
%Graficación 
p = tiledlayout(2,2);
nexttile
plot (t, real(x1), 'k'); xlabel('Tiempo (t)'); ylabel('Real'); title ('Gráfica de la parte real'); grid;
nexttile
plot (t, imag(x1), 'm'); xlabel('Tiempo (t)'); ylabel('Imaginario'); title ('Gráfica de la parte imaginaria');
grid;
nexttile
plot (t, abs(x1), 'r'); xlabel('Tiempo (t)'); ylabel('Magnitud'); title ('Gráfica de la magnitud'); grid;
nexttile
plot (t, angle(x1), 'k'); xlabel('Tiempo (t)'); ylabel('Fase'); title ('Gráfica de la fase'); grid;
figure
subplot(1,2,1)
plot (real(x1), imag(x1), 'b'); xlabel('Real'); ylabel('Imaginario'); title ('Gráfica plano complejo'); grid;
subplot(1,2,2)
polarplot (angle(x1), abs(x1), 'g'); title ('Gráfica polar'); grid;

figure
%Graficación la parte par
subplot (2,2,1);
plot (t,real(xe)); 
xlabel('Tiempo (t)');
ylabel('x_e(t) Real');
title('Parte real de la componente par de x(t)')
grid on
subplot (2,2,2);
plot (t,imag(xe)); 
xlabel('Tiempo (t)');
ylabel('x_e(t) Imaginaria');
title('Parte imaginaria de la componente par de x(t)')
grid on
%Graficación de la parte impar 
subplot (2,2,3);
plot (t,real(xo)); 
xlabel('Tiempo (t)');
ylabel('x_o(t) real');
title('Parte real de la componente impar de x(t)');
grid on;

subplot (2,2,4);
plot (t,imag(xo)); 
xlabel('Tiempo (t)');
ylabel('x_o(t) imaginaria');
title('Parte imaginaria de la componente impar de x(t)');
grid on;
%Periodicidad 
%Periodicidad
disp ("Análisis de periodicidad")
n=input("Ingresa el número de funciones sinusoidales: ");
w=zeros(1,n); %Arreglo con las frecuencias de los n-sinusoides
te=zeros(1,n); %Arreglo con los periodos fundamentales de los n sinusoides
i=0;
%Ingreso del número de frecuencias fundamentales y los periodos fundamentales
if n~=0
    for c=1:n
        i=i++1;
        w(c)=input(sprintf('Ingresa la frecuencia numero %d: ', i));
        W=sym(w);
        te(c)=2*pi/w(c);
        T=sym(te);
    end
    %Obtención del periodo fundamental
    To=lcm(T);
    disp((sprintf('El periodo fundamental es  %d', To)))
end




