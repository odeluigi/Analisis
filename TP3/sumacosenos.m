clear all
close all
A = 1;%coeficiente de amplitud
f=input('frecuencia=')
Ts=0.01;
t = 0:Ts:1-Ts; %intervalo de tiempo
y1 = 4*cos(2*pi*f *t);%señal coseno
y2 = A*cos(2*pi*2*f *t);%señal coseno
y3 = A*cos(2*pi*3*f *t);%señal coseno
y=y1+y2+y3+0.4;%suma de cosenos
plot(t,y);%grafica la suma de cosenos
ylabel('Amplitud')
xlabel('tiempo')