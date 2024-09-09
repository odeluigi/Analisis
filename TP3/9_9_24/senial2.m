
clear all
close all
Ts=input('Ts=');
t=0:Ts:4;
A1=rand;
A2=rand;
A3=rand;
A4=rand;
A5=rand;
A6=rand;
A7=rand;
A8=rand;
y1=(A1*3)*cos(2*pi*(2)*t);
y2=(A2*3)*cos(2*pi*(5)*t);
y3=(A3*3)*cos(2*pi*(8)*t);
y4=(A4*3)*cos(2*pi*(13)*t);
y5=(A5*3)*cos(2*pi*(30)*t);
y6=(A6*3)*cos(2*pi*(22)*t);
y7=(A7*3)*cos(2*pi*(16)*t);
y8=(A8*3)*cos(2*pi*(10)*t);
y=y1+y2+y3+y4+y5+y6+y7+y8;
plot(t,y,'r')