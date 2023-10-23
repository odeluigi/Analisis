clear all
close all
f=input('f='); %frecuencia de la señal
N=input('N=');%longitud de la muestra
fs=input('fs=')%frecuencia de muestreo
Ts=1/fs;%período de muestreo
n=0:1:N-1; %secuencia de tiempo 
y=cos(2*pi*f*n*Ts)+0.5*cos(2*pi*2*f*n*Ts)+0.25*cos(2*pi*4*f*n*Ts); %señal a representar
plot(n*Ts,y,'-o') %grafica la señal a representar
C = zeros(size(y)); %prepara vector de coeficientes con ceros
  for k = 0 : N - 1  % para cada coeficiente
    s = 0; %valor inicial del coeficiente
    for n = 0 : N - 1  % para cada valor de tiempo
      %s =  s+y1(n + 1) * exp(-j*(2 * pi * k / N)*n); %valor parcial de coef. 
      s =  s+y(n + 1) * exp(-j*(2 * pi *k*Ts)*n); %valor parcial de coef.
    end
    C(k + 1) = s; % valor final de cada coeficiente
  end
  deltaf=fs/N;
%grafica la amplitud de los coeficientes (amplitud del espectro de frec.)
  figure
  fre=0:deltaf:(length(C)-1)*deltaf;
  stem(fre,abs(C))
  
%grafica la fase de los coeficientes (fase del espectro de frecuencias) 
%figure
fa=angle(C);
for n=1:length(C);
if abs(imag(C(n)))<0.1 %elimina fases "ruidosas"
    fa(n)=0;
end
end
figure
stem(fre,fa)


  