clear all

fs = 1000; %value of sampling frequency
A=1; % value of magnitude
t1=0;% start time
t2 = 0.3;%stop time
shift=0;%shift phase
f1=20
s1=sinusoid( fs  ,f1 , A , t1 ,t2 , shift);
f2=40
s2=sinusoid( fs  ,f2, A , t1 ,t2 , shift);
f3=80
s3=sinusoid( fs  ,f3, A , t1 ,t2 , shift);
%h = hanning(length(x1));
%figure
%stem(h)
%x1 = x1(:) .* h(:);

figure
[R,I,M,Arg]=drawstemofcomplex(fft(s1),'none');
%calculate Real(R), Imaginer(I),Module(M),Argument(Arg) of complex system
subplot(5,1,1)
stem(s1) %original stem of s1
title('Original');
ylabel('Amplitude')

subplot(5,1,2)
stem(R) %Real fft stem of s1 
title('Real FFT');
ylabel('Magnitude')
subplot(5,1,3) 
stem(I) %Imaginary fft stem of s1 
title('Imaginary FFT');
ylabel('Magnitude')
subplot(5,1,4)
stem(M) %Module fft stem of s1 
title('Modul FFT');
ylabel('Magnitude')
subplot(5,1,5)
stem(Arg) %Argument fft stem of s1
title('Argument FFT');
ylabel('Magnitude')
%%
%stems of s2
figure
[R,I,M,Arg]=drawstemofcomplex(fft(s2),'none');
subplot(5,1,1)
stem(s2)
title('Original');
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
%stems of s3
figure
[R,I,M,Arg]=drawstemofcomplex(fft(s3),'none');
subplot(5,1,1)
stem(s3)
title('Original');
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