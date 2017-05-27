clear all

[x,Fs]=audioread('tone.wav');

figure
plot(x)
title('Original Sound')
D = 6000;
T=D/Fs
a=0.75;

for ii=1:length(x)
    if (ii > D)
        echo = a*x(ii-D);
    else
        echo = 0;      
    end
    y(ii)=x(ii)+echo;
end
figure
plot(y)
title('Sound with Echo')
sound(y,Fs)