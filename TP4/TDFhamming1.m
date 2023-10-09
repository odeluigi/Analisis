clear all
close all
f=input('f='); %frecuencia de la señal
N=input('N=');%longitud de la muestra
fs=input('fs=')%frecuencia de muestreo
Ts=1/fs;
n = linspace(0,N-5,N);%secuencia de tiempo 
w=hamming(N);%ventana de hamming
y1=cos(2*pi*f*n*Ts);
y=w.*y1';%señal modificada por la ventana de hamming

%grafica señales y ventana de hamming
subplot(3,1,1)
plot(n,y1,'-o') %grafica la señal a representar
subplot(3,1,3)
plot(n,y,'o')
subplot(3,1,2)
plot(n,w)

%Calcula transformada discreta de Fourier de la señal original
C1 = zeros(size(y1)); %prepara vector de coeficientes con ceros
  for k = 0 : N - 1  % para cada coeficiente
    s = 0; %valor inicial del coeficiente
    for n = 0 : N - 1  % para cada valor de tiempo
      %s =  s+y1(n + 1) * exp(-j*(2 * pi * k / N)*n); %valor parcial de coef.
      s =  s+y1(n + 1) * exp(-j*(2 * pi *k*Ts)*n); %valor parcial de coef.
    end
    C1(k + 1) = s; % valor final de cada coeficiente
  end
  
%grafica TDF de la señal original
  figure
  subplot(2,1,1)
  fre=0:length(C1)-1;
  stem(fre,abs(C1))
  
  %Calcula TDF de la señal modificada
  C = zeros(size(y)); %prepara vector de coeficientes con ceros
  for k = 0 : N - 1  % para cada coeficiente
    s = 0; %valor inicial del coeficiente
    for n = 0 : N - 1  % para cada valor de tiempo
     % s =  s+y(n + 1) * exp(-j*(2 * pi * k / N)*n); %valor parcial de coef.
      s =  s+y(n + 1) * exp(-j*(2 * pi *k*Ts)*n); %valor parcial de coef.
    end
    C(k + 1) = s; % valor final de cada coeficiente
  end
  
%grafica TDF de la señal modificada
subplot(2,1,2)
  fre=0:length(C)-1;
  stem(fre,abs(C))
