


% set up time series
sf = 8000;
x = [0:1/sf:0.5];


a=.5*cos(2*pi*440*x);
b=.5*cos(2*pi*493.88*x);
cs=.5*cos(2*pi*554.37*x);
d=.5*cos(2*pi*587.33*x);
e=.5*cos(2*pi*659.26*x);
fs=.5*cos(2*pi*739.99*x);


%assembling the notes into a song
line1 = [a,a,e,e,fs,fs,e,e];
line2 = [d,d,cs,cs,b,b,a,a];
line3 = [e,e,d,d,cs,cs,b,b];
song = [line1,line2,line3,line3,line1,line2];
% now we play the song
sound(song, sf)