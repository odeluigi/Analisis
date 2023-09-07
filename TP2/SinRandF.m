load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\40hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\83hz
%load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\Aleatoria\110hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\145hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\218hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\284hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\309hz
%load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\Aleatoria\347hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\421hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\562hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\700hz
load C:\Users\simaf\Documents\MATLAB\Analisis\TP4\FrecuenciaAleatoria\778hz
A=[X40hz(:,2),X83hz(:,2),X145hz(:,2),X218hz(:,2),X284hz(:,2),X309hz(:,2),X421hz(:,2),X562hz(:,2),X700hz(:,2),X778hz(:,2)]
M=mean(A')
s=std(A')
M1=M+s
M2=M-s
t=0:1/11025:(length(A)-1)*(1/11025);
A2=A'
col=551
rows=10
for j=1:col,
C(j)=sum(A2(:,1).*A2(:,j))/rows;
end
C=C./max(C)
figure
plot(X40hz(:,1),X40hz(:,2),X83hz(:,1),X83hz(:,2),X145hz(:,1),X145hz(:,2),X218hz(:,1),X218hz(:,2))
figure
plot(t,X40hz(:,2))
figure
plot(t,M,t,M1,t,M2)
figure
plot(C);
xlim([0 200])






