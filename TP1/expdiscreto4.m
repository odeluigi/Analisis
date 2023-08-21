clear all
close all
fsenial=input('fseñal=');%ingreso frecuencia señal
tc=0:0.0001:3;%"tiempo continuo"
yc=exp(j*2*pi*fsenial*tc);%señal de "tiempo continuo"
fs=input('fs=');%ingreso frecuencia de muestreo
Ts=1/fs;%calculo tiempo de muestreo
Tfinal = 3;%valor final de tiempo
N=Tfinal/Ts;%calculo la cantidad de muestras
n=0:N;%secuencia de muestras
td=n*Ts;%valores de tiempo discreto
Omega=2*pi*fsenial/fs;%frecuencia de la señal discreta en radianes/muestra
Omegan=Omega/pi%frecuencia de la señal discreta en unidades de pi
yd=exp(j*Omega*n);%señal senoidal de tiempo discreto

Omegalias1=2*pi-(2*pi*fsenial/fs);%2pi-frecuencia de la señal discreta 
Omegaliasn1=Omegalias1/pi% 2pi-frec. señal discreta en unidades de pi
yd1=exp(j*Omegalias1*n);%señal senoidal discreta (2pi-Omega)
yc1=exp(j*2*pi.*(fs-fsenial).*tc);%señal de "tc" que corresponde a (2pi-Omega)

Omegalias2=(2*pi*fsenial/fs)+2*pi;%frecuencia de la señal discreta + 2pi
Omegaliasn2=Omegalias2/pi% frec. señal discreta + 2pi en unidades de pi
yd2=exp(j*Omegalias2*n);%señal senoidal discreta (Omega+2pi)
yc2=exp(j*2*pi*(fsenial+fs)*tc);%señal de "tc" que corresponde a (Omega+2pi)
%Grafico señal de tiempo continuo y señal de tiempo discreto
subplot(3,1,1)

%Grafico señal de tiempo continuo y señal de tiempo discreto con(2pi-Omega)
%y (Omega+2pi)
plot(tc,yc,'b',td,yd,'-or')

subplot(3,1,2)
plot(tc,yc1,'g',td,yd1,'-ok')

subplot(3,1,3)
plot(tc,yc2,'m',td,yd2,'-ok')



