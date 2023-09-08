load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r1
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r2
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r3
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r4
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r5
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r6
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r7
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r8
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r9
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r10
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r11
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r12
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r13
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r14
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r15
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r16
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r17
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r18
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r19
load C:\Users\simaf\Documents\MATLAB\Analisis\TP2\RuidoBlanco\r20

t=0:1/44100:(length(A)-1)*(1/44100);
A=[r1(:,2),r2(:,2),r3(:,2),r4(:,2),r5(:,2),r6(:,2),r7(:,2),r8(:,2),r9(:,2),r10(:,2),r11(:,2),r12(:,2),r13(:,2),r14(:,2),r15(:,2),r16(:,2),r17(:,2),r18(:,2),r19(:,2),r20(:,2)]
M=mean(A')
s=std(A')
M1=M+s
M2=M-s
t=0:1/44100:(length(A)-1)*(1/44100);
A2=A'
col=2205
rows=20
for j=1:col,
C(j)=sum(A2(:,1).*A2(:,j))/rows;
end
C=C./max(C)
figure
plot(r1(:,1),r1(:,2),r2(:,1),r2(:,2))
xlim([0 200])
figure
plot(t,r1(:,2))
figure
plot(t,M,t,M1,t,M2)
figure
plot(C);
xlim([0 200])