clear all
n=[5 6 7];
N=3;
x=1:20;
B=1/N.*ones(1,3);

x = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];
y=filter(B,1,x);
figure
stem(x) %impulse 
title('Impulse Response')
ylabel('Amplitude')
k=fft(y);
figure
stem(abs(k))
title('Module')
ylabel('Module')
figure
arg=atan(imag(k)./real(k)).*(360/(2*pi));
stem(arg)
title('Argument')
ylabel('Arg')
%4,3