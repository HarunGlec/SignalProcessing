clear all

fs=256;%Sampling frequency value
A=10;%magnitude value
t1=0;%start time
t2=0.1;%stop time
shift=0;%phase shift

f1=20
s1=sinusoid( fs  ,f1 , A , t1 ,t2 , shift);
 
f2=40
s2=sinusoid( fs  ,f2, A , t1 ,t2 , shift);
 
f3=80
s3=sinusoid( fs  ,f3, A , t1 ,t2 , shift);

subplot(3, 1 ,1)
stem(s1)
xlabel('Time');
ylabel('Amplitude');
title('Stem of S1')
subplot(3 , 1 , 2)
stem(s2)
xlabel('Time');
ylabel('Amplitude');
title('Stem of S2')
subplot(3, 1 ,3)
stem(s3)
xlabel('Time');
ylabel('Amplitude');
title('Stem of S3')