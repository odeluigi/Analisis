clear all
close all
A = 1;%coeficiente de amplitud
f=input('frecuencia=')
Ts=0.01;
t = 0:Ts:1; %intervalo de tiempo
y = A*cos(2*pi*f *t);%se�al cuadrada
plot(t,y);%grafica la se�al cuadrada
ylabel('Amplitud')
xlabel('tiempo')

 

 

