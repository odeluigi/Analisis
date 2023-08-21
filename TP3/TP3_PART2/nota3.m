clear all
close all
t=0:1/44100:0.5;%tiempo de ejecución de cada nota musical

%Coeficientes de amplificación  
%Sugerencia: probar valores entre 10 y 200.

A=200;
B=10;
Cs=10;
D=200;
E=200;
Fs=10;

%Carga las notas musicales y les da una longitud para producir sonido. 
a5=load('outa');
a=repmat(a5,length(t),1)';%ff copias de c2 para producir sonido
b5=load('outb');
b=repmat(b5,length(t),1)';%ff copias de c2 para producir sonido
cs5=load('outcs');
cs=repmat(cs5,length(t),1)';%ff copias de c2 para producir sonido
d5=load('outd');
d=repmat(d5,length(t),1)';%ff copias de c2 para producir sonido
e5=load('oute');
e=repmat(e5,length(t),1)';%ff copias de c2 para producir sonido
fs5=load('outfs');
fs=repmat(fs5,length(t),1)';%ff copias de c2 para producir sonido


%Produce notas con envolvente de ataque y decaimiento
cs1=Cs*(2-exp(-455.3*t)).*exp(-4.3*t).*cs(1:length(t));
a1=A*(2-exp(-455.3*t)).*exp(-4.3*t).*a(1:length(t));
d1=D*(2-exp(-455.3*t)).*exp(-4.3*t).*d(1:length(t));
e1=E*(2-exp(-455.3*t)).*exp(-4.3*t).*e(1:length(t));
fs1=Fs*(2-exp(-455.3*t)).*exp(-4.3*t).*fs(1:length(t));
b1=B*(2-exp(-455.3*t)).*exp(-4.3*t).*b(1:length(t));

%ejecuta la melodía
line1 = [a1,a1,e1,e1,fs1,fs1,e1,e1];
line2 = [d1,d1,cs1,cs1,b1,b1,a1,a1];
line3 = [e1,e1,d1,d1,cs1,cs1,b1,b1];
song = [line1,line2,line3,line3,line1,line2];
sound(song, 44100)
