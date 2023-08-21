% Calcula el promedio de los elementos de un vector 
% Sintaxis : promedio(x) donde x es el vector a promediar
function p = promedio(x)
n=length(x);
to=sum(x);
p=to/n;
