clear;
close all;
Fs=256; %frecuencia de muestreo
y=load('eeg4');
y=y(200:400);
t=0:1/Fs:(length(y)-1)*(1/Fs);
figure(1)
plot(t,y);
c = fft(y); %transformada r�pida de Fourier          
mag=abs(c); %amplitud de la transformada r�pida
mag = 2*mag(1:floor(length(c)/2)); %amplitud del espectro luego del folding
deltaf=Fs/length(y);
f = 0:deltaf:(length(mag)-1)*deltaf; %valores de frecuencia analizados
figure(2)
plot(f,mag)%gr�fica del espectro de frecuencias
%ylim([0 2000])