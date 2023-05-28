clc;
clear X1 X2 x1 x2 ;
close all ;
disp('Análisis básico de señales')
syms t
X1=input ('Ingresa la función x(t) = ');
X2=input ('Ingresa la función x(-t)= ');
%Cálculo simbólico de parte par e impar
Xe=(X1+X2)/2;
Xo=(X1-X2)/2;
%Calculo de energia y potencia
%                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
energy=int(X1^2, -t, t);
power=(1/(2*t))*int(X1^2, -t, t);
energy1=limit(int(X1^2, -t, t),t,inf);
power1=limit((1/(2*t))*int(X1^2, -t, t),t,inf);
t=input('Ingresa el intervalo deseado: ');
%Conversión a valores numéricos
xi=subs(X1);
x1=double(xi);
x2=fliplr(x1);
xe=(x1+x2)/2; 
xo=(x1-x2)/2;

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
    disp((sprintf('La señal es de potencia con P= %s', power1)))
else 
    disp('La señal no es de energia ni de potencia')
end 

%Graficación de partes par e impar
subplot (1,2,1);
plot (t,xe);
xlabel('Tiempo (t)');
ylabel('x_e(t)');
title('Parte par de x(t)')
grid on

subplot (1,2,2);
plot (t,xo);
xlabel('Tiempo (t)');
ylabel('x_o(t)');
title('Parte impar de x(t)');
grid on;

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






