clear
close all


%carga y grafica la se�al a filtrar
load('ecg1'); %carga la se�al ecg1
y=ecg1;
Fs=360;%frecuencia de muestreo
tsec=(0:length(y)-1)*(1/Fs);%tiempo discreto en segundos
figure(1)
plot(tsec,y)%grafica la se�al ecg1  completa
title('ecg1');
xlabel('t(s)');
ylabel('mV');


%grafica un intervalo de la se�al a filtrar
figure(2)
plot(tsec,y)%grafica un intervalo de la se�al ecg
title('ecg1');
xlabel('t(s)');
ylabel('mV');
axis([4 8 -8 -4])



%C�lculo de los coeficientes del filtro
fnyq=Fs/2;
wl=48/fnyq;%frecuencia inferior de la banda de atenuaci�n
wh=52/fnyq;%frecuencia superior de la banda de atenuaci�n
stop50=fir1(256,[wl wh],'stop');%dise�o del filtro

%Graficaci�n de la respuesta en frecuencia del filtro 
H=freqz(stop50,1,1000);
figure(3)
subplot(2,1,1)
plot( [0:999]/1000,20*log10(abs(H)),'r') 
grid on;   
xlabel( 'frec. relativa' ); 
ylabel( 'Ganancia (dB)') 
subplot(2,1,2)
plot( [0:999]/1000,unwrap(angle(H)),'r' );
grid on;



%Implementaci�n del filtro
ecgno50=filtfilt(stop50,1,ecg1);%implementaci�n del filtro


%C�lculo y grafic. del espectro de la se�al antes y despu�s de filtrar
c = fft(y);%transformada r�pida de Fourier de la se�al ecg1           
mag=abs(c);%amplitud del espectro de frecuencias completo
mag = 2*mag(1:floor(length(y)/2));%amplitud de la mitad del espectro
f = (0:length(mag)-1)*Fs/length(y);%valores para construir eje de frec.
figure(4)
subplot(2,1,1)
plot(f(2:length(f)),mag(2:length(mag)))%graf. amplit. espectro de ecg1
title('espectro de ecg1')
xlabel('frecuencia (Hz)')
ylabel('Amplitud')
axis([0 180 0 2500])
c = fft(ecgno50);%transf. r�pida de F. de la se�al ecg1 filtrada           
mag=abs(c);%amplitud del espectro de frecuencias completo
mag = 2*mag(1:floor(length(y)/2));%amplitud de la mitad del espectro
f = (0:length(mag)-1)*Fs/length(y);% valores para construir eje de frec.
subplot(2,1,2)
plot(f(2:length(f)),mag(2:length(mag)))%graf. espectro de ecg1 filtrada
title('espectro de ecg1 filtrada')
xlabel('frecuencia (Hz)')
ylabel('Amplitud')
axis([0 180 0 2500])



%Graficaci�n de la se�al antes y despu�s de filtrar
figure(5)
subplot (2,1,1)
plot(tsec,ecg1);%grafica la se�al ecg1
title('ecg1');
xlabel('t(s)');
ylabel('mV');
subplot(2,1,2)
plot(tsec,ecgno50);%grafica la se�al ecg1 filtrada
title('ecg1 filtrada');
xlabel('t(s)');
ylabel('mV');
grid




%Graficaci�n de una porci�n de la se�al antes y despu�s de filtrar
figure(6)
subplot (2,1,1)
plot(tsec,ecg1);%grafica un intervalo de la se�al ecg1
title('ecg1');
xlabel('t(s)');
ylabel('mV');
axis([4 8 -8 -4])
subplot(2,1,2)
plot(tsec,ecgno50);%grafica un intervalo de la se�al ecg1 filtrada
axis([4 8 -8 -4])
title('ecg1 filtrada');
xlabel('t(s)');
ylabel('mV');
%save('ecg1no50','ecgno50','-ASCII')%guarda la se�al filtrada en disco)
