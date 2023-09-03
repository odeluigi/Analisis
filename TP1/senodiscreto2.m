clear all
close all
fsenial=input('fse�al=');%ingreso la frecuencia de la se�al
tc=0:0.0001:1;%intervalo de tiempo "continuo"
yc=sin(2*pi*fsenial*tc);%se�al senoidal de tiempo continuo
fs=input('fs=');%ingreso frecuencia de muestreo
Ts=1/fs; %calculo el per�odo de muestreo
Tfinal = 1; %valor de tiempo final
N=Tfinal/Ts; %n�mero de muestras
n=0:N;%secuencia de muestras
td=n*Ts; %secuencia de valores de tiempo discreto
yd=sin(2*pi*fsenial*td); %se�al senoidal de tiempo discreto
plot(tc,yc,'b',td,yd,'or')%grafico las se�ales senoidales de tiempo
%continuo y tiempo discreto
