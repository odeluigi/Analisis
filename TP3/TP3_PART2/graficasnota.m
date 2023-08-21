clear all
close all
Fs=44100;
Ts=1/Fs;
y=audioread('piano_A5.wav');
t=0:Ts:(length(y)-1)*Ts;
figure(1)
plot(t,y);
figure(2)
plot(t(10000:10200),y(10000:10200)), grid on
sound(y,44100)