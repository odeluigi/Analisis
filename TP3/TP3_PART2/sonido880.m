clear all
close all
Fs=44100;
Ts=1/Fs;
t=0:Ts:.5;
y=cos(2*pi*880*t);
sound(y,44100)