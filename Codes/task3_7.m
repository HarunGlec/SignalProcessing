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

%%
%stems of s1+s2
figure
sum_s1s2 = s1+s2;
[R,I,M,Arg]=drawstemofcomplex(fft(sum_s1s2),'none');
subplot(5,1,1)
stem(sum_s1s2)
title('Sum of Sinusoid 1 + Sinusoid 2');
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
%stems of s2+s3
figure
sum_s2s3 = s2+s3;
[R,I,M,Arg]=drawstemofcomplex(fft(sum_s2s3),'none');
subplot(5,1,1)
stem(sum_s2s3)
title('Sum of Sinusoid 2 + Sinusoid 3');
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