clear all
close all
Fs=250;
y=load('ecg2');
t=0:1/250:(length(y)-1)*(1/Fs);
figure
plot(t,y)