clear all
close all
A = 1;%coeficiente de amplitud
f=input('frecuencia=')
Ts=0.001;
t = 0:Ts:1; %intervalo de tiempo
y = A*cos(2*pi*f *t);%se�al coseno
plot(t,y);%grafica la se�al coseno
ylabel('Amplitud')
xlabel('tiempo')

 

 

