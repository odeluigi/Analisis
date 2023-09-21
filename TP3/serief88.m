function [s1] = serief(y,Ts,t)
close all
Nter=input('Nter=nro de t�rminos')
nter=1:Nter;
N=length(y);%cantidad de elementos que tiene la se�al para analizar2
n=0:1:N-1; %secuencia de tiempo 
figure(1)
plot(n*Ts,y,'.') %grafica la se�al a representar
pause(2)%pausa para visualizar la se�al a representar



%Calcula los coeficientes de la serie de Fourier (Ecuaci�n de An�lisis)

  for k = 0 : N-1  % para cada coeficiente
    s = 0; %valor inicial del coeficiente
    for n = 0 : N - 1  % para cada valor de tiempo
      s =  s+y(n + 1) * exp(-j*(2 * pi *k*n *Ts)); %valor parcial de coef.
    end
    C(k + 1) = s/N; % valor final de cada coeficiente
  end
  
  
  
  
%Calcula el valor de cada t�rmino de la serie de Fourier (Ecuaci�n de
%S�ntesis)

for i=1:length(N-1)
    n=0:1:N-1;
    ar(1,:)=(C(1).*(exp(1j*2 * pi *0*n *Ts)));%t�rmino de cont�nua
    v=2;
    for k = 1 : N-1  % para cada coeficiente
      ar(v,:)=((C(k+1).*(exp(1j*2 * pi *k*n *Ts))+conj(C(k+1)).*(exp(-1j*2 * pi *k*n *Ts))));%arm�nicos
      v=v+1;
    end
i=i+1;
end


%Define variables para realizar los gr�ficos
  
fre=0:length(C)-1; % vector de frecuencias
v=1;
fre=fre(1:Nter+1); %frecuencias correspondientes a la cantidad de t�rminos
for i=1:Nter+1
freneg = -fliplr(fre(i));
  Cneg = fliplr(abs(C(i))');
  
   
  %grafica el espectro de frecuencias correspondiente a los
  %t�rminos de la serie solicitados (an�lisis)
  figure(2)
  subplot(2,1,1)
  stem(fre(i),abs(C(i)),'b','filled'),hold on,stem(freneg,Cneg,'b','filled')
  axis([-max(fre)-1 max(fre)+1 0 max(abs(C))*1.2])
  hold on
  
  
  %gr�fica el aporte de cada t�rmino a la serie(aporte a la s�ntesis)
  figure(2)
  subplot(2,1,2)
  plot(n*Ts,(ar(v,:)))
   axis([0 1 min(y)-1  max(y)+1])
      hold on
      v=v+1;
  pause(1)
end
s1=sum(ar(1:Nter+1,:)); %suma los t�rminos de la serie (s�ntesis)
 
%grafica el resultado de la serie (s�ntesis)
figure(2)
subplot(2,1,2)
plot(n*Ts,(s1),'k')
plot(t,y,'b')
xlim([0 0.6])
hold off 