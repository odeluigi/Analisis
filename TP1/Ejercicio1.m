clear all
close all
Fs=360;
y=load('c:\Datos\TP2\ecg1');
t=0:1/360:(length(y)-1)*(1/Fs);
figure
plot(t,y)