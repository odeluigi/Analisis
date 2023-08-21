function [s1] = seriefmusica(y,Ts,ff)

Nter=input('Nter=nro de términos')
nter=1:Nter;%secuencia de términos
N=length(y);%longitud de la señal
n=0:1:N-1; %secuencia de tiempo 
figure(1)
plot(n*Ts,y) %grafica la señal a representar
pause(1)

%Calcula los coeficientes de la serie
for k = 0 : N-1  % para cada coeficiente
    s = 0; %valor inicial del coeficiente
    for n = 0 : N - 1  % para cada valor de tiempo
      s =  s+y(n + 1) * exp(-j*(2 * pi *k*ff*n *Ts)); %valor parcial de coef.
    end
    C(k + 1) = s/N; % valor final de cada coeficiente
  end
  
  
%Calcula el valor de cada término de la serie de Fourier 
for i=1:length(N-1)
    n=0:1:N-1;
    ar(1,:)=(C(1).*(exp(1j*2 * pi *0*n *Ts)));
    p=2;
    for k = 1 : N-1  % para cada coeficiente
      ar(p,:)=((C(k+1).*(exp(1j*2 * pi *k*ff*n *Ts))+conj(C(k+1)).*(exp(-1j*2 * pi *k*ff*n *Ts))));
      p=p+1;
    end
i=i+1;
end


p=1;%cuenta inicial de armónicos
fre=0:length(C)-1; % vector de frecuencias
fre=fre(1:Nter+1); %frecuencias correspondientes a la cantidad de términos
for i=1:Nter+1
freneg = -fliplr(fre(i)); %frecuencias negativas
  Cneg = fliplr(abs(C(i))');%coeficientes que corresponden a frec. neg.
  
  
  figure(2)
  subplot(2,1,1)%grafica el espectro de frecuencias correspondiente a los
  %términos de la serie solicitados (análisis)
  stem(fre(i)*ff,abs(C(i)),'b','filled'),hold on,stem(freneg*ff,Cneg,'b','filled')
  axis([-max(fre)*ff-1 max(fre)*ff+1 0 max(abs(C))+0.2*max(abs(C))])
  hold on
  figure(2)
  subplot(2,1,2)
   plot(n*Ts,(ar(p,:)))%gráfica el aporte de cada término a la serie(aporte 
   %a la síntesis
      hold on
      p=p+1;%incrementa contador de armónicos
  pause(.1)
end
s1=sum(ar(1:Nter,:)); %suma los términos de la serie
 figure(2)
 subplot(2,1,2)
    plot(n*Ts,(s1),'k')%grafica el resultado de la serie (síntesis)
    hold off 