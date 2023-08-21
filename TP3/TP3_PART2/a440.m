clear all
close all
t=0:1/44100:0.95;%tiempo de ejecución de cada nota musical

%Coeficientes de amplificación  
%Sugerencia: probar valores entre 10 y 200.

A=200;

%Carga las notas musicales y les da una longitud para producir sonido. 
a5=load('outa');
a=repmat(a5,length(t),1)';%ff copias de c2 para producir sonido



%Produce notas con envolvente de ataque y decaimiento

a1=A*(2-exp(-455.3*t)).*exp(-4.3*t).*a(1:length(t));


%ejecuta la melodía

sound(a1, 44100)
