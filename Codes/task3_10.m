
clear all

fs = 1000; %value of sampling frequency
A=1; % value of magnitude
t1=0;% start time
t2 = 0.3;%stop time
shift=0;%shift phase
% [x1,x2,x3]=Generatesinusoid(fs , A , t1 ,t2 , shift);%generate 3 random sinusoid
f1=100
x1=sinusoid( fs  ,f1 , A , t1 ,t2 , shift);

f2=200
x2=sinusoid( fs  ,f2, A , t1 ,t2 , shift);

f3=400
x3=sinusoid( fs  ,f3, A , t1 ,t2 , shift);
%%
%stems of concatenations x1,x2
figure
con_x1x2 = [x1 x2];
[R,I,M,Arg]=drawstemofcomplex(fft(con_x1x2),'none');
subplot(5,1,1)
stem(con_x1x2)
title('Concatenation of Sinusoid 1 + Sinusoid 2');
subplot(5,1,2)
stem(R)
title('Real FFT');
subplot(5,1,3)
stem(I)
title('Imaginary FFT');
subplot(5,1,4)
stem(M)
title('Modul FFT');
subplot(5,1,5)
stem(Arg)
title('Argument FFT');
%%
%stems of concatenations x2,x3
figure
con_x2x3 = [x2 x3];
[R,I,M,Arg]=drawstemofcomplex(fft(con_x2x3),'none');
subplot(5,1,1)
stem(con_x2x3)
title('Concatenation Of Sinusoid 2 + Sinusoid 3');
subplot(5,1,2)
stem(R)
title('Real FFT');
subplot(5,1,3)
stem(I)
title('Imaginary FFT');
subplot(5,1,4)
stem(M)
title('Modul FFT');
subplot(5,1,5)
stem(Arg)
title('Argument FFT');
%%