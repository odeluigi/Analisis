clear all
close all
Fs=256;
Ts=1/256;
y=load('senial256');
t=0:1/256:(length(y)-1)*(1/Fs);
figure
plot(t,y)