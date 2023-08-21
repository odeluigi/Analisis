clear all
close all
nota=input('nota=')%carga el nombre del archivo de la nota musical
y=load(nota);%vector que contiene la secuencia de valores de la nota music.
Fs=44100;%frecuencia de muestreo
Ts=1/Fs;%per�odo de muestreo
ff=Fs/(length(y)-1);%calcula la frecuencia fundamental de la nota musical
s1=seriefmusica(y,Ts,ff);%an�lisis y s�ntesis de Fourier
ddd=['out',nota];%genera nombre de archivo para guardar la nota sintetizada
save(ddd,'s1','-ASCII')%guarda la nota sintetizada



 
