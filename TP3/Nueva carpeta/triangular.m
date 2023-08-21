clear all
close all
A = 1;%coeficiente de amplitud
Wdt = 0.5;%selección de máximo
Ts=0.01;
t = 0:Ts:1; %intervalo de tiempo
y = A*sawtooth(2*pi*1 * (t-0.5) , Wdt);%onda diente de sierra (triangular si
%Wdt=0.5)
plot(t,y);%grafica la onda triangular
ylabel('Amplitud')
xlabel('tiempo')


 

 

