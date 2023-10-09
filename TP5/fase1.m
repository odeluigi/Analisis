clear all
close all
t=-3:0.01:3;
y=sin(2*pi*t);
y1=cos(2*pi*t);
plot(t,y),hold on,plot(t,y1,'r'),grid on
hold off