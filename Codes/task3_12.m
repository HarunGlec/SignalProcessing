clear all

fs = 512;
A=1;
t1=0;
t2 = 0.5;
shift=0;
f1=50
s1=sinusoid( fs  ,f1 , A , t1 ,t2 , shift);

f2=100
s2=sinusoid( fs  ,f2, A , t1 ,t2 , shift);

f3=200
s3=sinusoid( fs  ,f3, A , t1 ,t2 , shift);

x=[s1,s2,s3]
lengthofOverlap=64;
w=hamming(lengthofOverlap)';

[S,F,T]=spectrogram(x,w,50,64,64)
imagesc(T,F,abs(S))
ylabel('Frequency')
xlabel('Time(s)')
title('SFTF Spectrum')
