clear;
close all;
Fs=360; %frecuencia de muestreo
y=load('ecg1');
t=0:1/Fs:(length(y)-1)*(1/Fs);
figure(1)
plot(t,y);
c = fft(y); %transformada rápida de Fourier          
mag=abs(c); %amplitud de la transformada rápida
mag = 2*mag(1:floor(length(c)/2)); %amplitud del espectro luego del folding
%mag = fftshift(c)
deltaf=Fs/length(y);
f = 0:deltaf:(length(mag)-1)*deltaf; %valores de frecuencia analizados
figure(2)
plot(f,mag)%gráfica del espectro de frecuencias
xlim([-100 100])




