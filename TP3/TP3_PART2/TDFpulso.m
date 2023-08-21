clear all
close all
ancho=input('ancho='); %ancho del pulso
deltat=input('deltat='); %retardo del pulso
fs=input('fs=')%frecuencia de muestreo
N=fs;
Ts=1/fs;%período de muestreo
n=0:1:N-1; %secuencia de tiempo 
y = 1*square(2*pi*1 * (n*Ts-deltat),ancho);%señal cuadrada
y=heaviside(y);%acota los valores del pulso entre 0 y 1
plot(n*Ts,y,'.') %grafica la señal a representar
C = zeros(size(y)); %prepara vector de coeficientes con ceros
  for k = 0 : N - 1  % para cada coeficiente
    s = 0; %valor inicial del coeficiente
    for n = 0 : N - 1  % para cada valor de tiempo
      %s =  s+y1(n + 1) * exp(-j*(2 * pi * k / N)*n); %valor parcial de coef. 
      s =  s+y(n + 1) * exp(-j*(2 * pi *k*Ts)*n); %valor parcial de coef.
    end
    C(k + 1) = s/N; % valor final de cada coeficiente
  end
  deltaf=fs/N;
%grafica la amplitud de los coeficientes (amplitud del espectro de frec.)
  figure
  fre=0:deltaf:(length(C)-1)*deltaf;
  stem(fre,abs(C))
  


  