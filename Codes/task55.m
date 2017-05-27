clear all
Fs=5000; 
Ts=1/Fs; 
Ns=512; 
t=[0:Ts:Ts*(Ns-1)]; 
f1=1000;

x=sin(2*pi*f1*t); 

grid on;

N=50;
N1=75;
N2=100;

W=[0.4]; 

wndFunction = @hamming;
B=fir1(N,W, wndFunction(N + 1));
C=fir1(N1,W, wndFunction(N1 + 1));
D=fir1(N2,W, wndFunction(N2 + 1));
A=1; 

freqz(B,A);
title('N=50')
figure
freqz(C,A);
title('N=75')
figure
freqz(D,A);
title('N=100')
figure
impz(B, A);
title('N=50')
figure
impz(C, A);
title('N=75')
figure
impz(D, A);
title('N=100')