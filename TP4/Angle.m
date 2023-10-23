clear all
close all
fs = 360;
t = 0:1/fs:1-1/fs;
%x = cos(2*pi*2*t);
x=load('ecg1')
y = fft(x);
z = fftshift(y);
ly = length(y);
f = (-ly/2:ly/2-1)/ly*fs;
stem(f,abs(z))
xlabel 'Frequency (Hz)'
ylabel '|y|'
grid
tol = 1e-6;
z(abs(z) < tol) = 0;

%theta = angle(z);

%stem(f,theta/pi)
%xlabel 'Frequency (Hz)'
%ylabel 'Phase / \pi'
%grid