load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\Def\seno1
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\Def\seno2
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\Def\seno3
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\Def\seno4
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\Def\seno5
A=[seno1(:,2),seno2(:,2),seno3(:,2),seno4(:,2),seno5(:,2)]
t=0:1/11025:(length(A)-1)*(1/11025);
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
plot(seno1(:,1),seno1(:,2),seno2(:,1),seno2(:,2),seno3(:,1),seno3(:,2),seno4(:,1),seno4(:,2),seno5(:,1),seno5(:,2))
xlim([0 200])
figure
plot(t,seno1(:,2))
figure
plot(t,M,t,M1,t,M2)
figure
plot(C);
xlim([0 200])