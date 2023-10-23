% Definir la función de transferencia H(z)
b = [1, 0, 0];  % Coeficientes del numerador
a = [1, -0.5, 0.25];  % Coeficientes del denominador

% Calcular la respuesta en frecuencia
freqz(b, a)

% Calcular la respuesta al impulso h[n]
n = 0:20;  % Rango de n
h = impz(b, a, length(n));

% Definir la señal de entrada x[n]
x = zeros(size(n));
x(1) = 1;
x(2) = -1;

% Simular la respuesta del sistema utilizando convolución
y = conv(x, h);

% Graficar la respuesta al impulso h[n]
subplot(2, 1, 1)
stem(n, h)
xlabel('n')
ylabel('h[n]')
title('Respuesta al impulso')

% Graficar la respuesta del sistema y[n]
subplot(2, 1, 2)
stem(0:length(y)-1, y)
xlabel('n')
ylabel('y[n]')
title('Respuesta del sistema')