clear all

fs = 1000; %value of sampling frequency
f= 30;%value of frequency
A=1; % value of magnitude
t1=0;% start time
t2 = 0.3;%stop time
shift=0;%shift phase
C=5;%value of constant

x=sinusoid(fs ,f, A , t1 ,t2 , shift);%generate sinusoid
xC=C+x;

figure
[R,I,M,Arg]=drawstemofcomplex(fft(x),'none');
%calculate Real(R), Imaginer(I),Module(M),Argument(Arg) of complex system
subplot(5,1,1)
stem(x) %original stem of x
title('Original');
ylabel('Amplitude')
subplot(5,1,2)
stem(R) %Real fft stem of x 
title('Real FFT');
ylabel('Magnitude')
subplot(5,1,3) 
stem(I) %Imaginary fft stem of x 
title('Imaginary FFT');
ylabel('Magnitude')
subplot(5,1,4)
stem(M) %Module fft stem of x
title('Modul FFT');
ylabel('Magnitude')
subplot(5,1,5)
stem(Arg) %Argument fft stem of x
title('Argument FFT');
ylabel('Magnitude')
%%
%stems of xC
figure
[R,I,M,Arg]=drawstemofcomplex(fft(xC),'none');
subplot(5,1,1)
stem(xC)
title('Sinusoid added Constant');
ylabel('Amplitude')
subplot(5,1,2)
stem(R)
title('Real FFT');
ylabel('Magnitude')
subplot(5,1,3)
stem(I)
title('Imaginary FFT');
ylabel('Magnitude')
subplot(5,1,4)
stem(M)
title('Modul FFT');
ylabel('Magnitude')
subplot(5,1,5)
stem(Arg)
title('Argument FFT');
ylabel('Magnitude')
%%