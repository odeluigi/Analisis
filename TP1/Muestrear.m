clear all
close all
Fsenial=100;
load('Seno100Hz');
y=[Seno100Hz(:,2)];
%maximo=max(y);
%y=y/maximo;
t=0:1/44100:(length(y)-1)*(1/44100);
fs=input('fs=')
Ts=1/fs;
yc = resample(y,fs,44100)
t2 = (0:(length(yc)-1))*44100/(fs*44100);
%yc1=(yc-1).*Ts
%calculo tiempo de muestreo
Tfinal = 0.0500;%valor final de tiempo
N=Tfinal/Ts;%calculo la cantidad de muestras
n=0:N;%secuencia de muestras
td=n*Ts;%valores de tiempo discreto
td2=td(1:(end-1))%valores de tiempo discreto
%td=0:1/fs:0.05
plot(t,y,'b',t2,yc,'or')