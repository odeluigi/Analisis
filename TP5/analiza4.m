clear;
close all;
Fs=44100; %frecuencia de muestreo
y=audioread('E4ioc.wav');
c = fft(y); %transformada rápida de Fourier          
mag=abs(c); %amplitud de la transformada rápida
mag = 2*mag(1:floor(length(c)/2)); %amplitud del espectro luego del folding
deltaf=Fs/length(y);
f = 0:deltaf:(length(mag)-1)*deltaf; %valores de frecuencia analizados
figure
plot(f,mag)%gráfica del espectro de frecuencias





