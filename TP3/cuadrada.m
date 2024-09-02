clear all
close all
A = 1;%coeficiente de amplitud
deltat=input('deltat (valores<1) = ')
ancho=input('ancho=')
Ts=0.001;
t = 0:Ts:1; %intervalo de tiempo
y = A*square(2*pi*1 * (t-deltat),ancho);%señal cuadrada
y=heaviside(y);%acota los valores del pulso entre 0 y 1
plot(t,y);%grafica la señal cuadrada
ylabel('Amplitud')
xlabel('tiempo')

 

 

