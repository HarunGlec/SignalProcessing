clear all

fs = 512; %value of sampling frequency
A=1; % value of magnitude
t1=0;% start time
t2 = 0.5;%stop time
shift=0;%shift phase
f1=50
s1=sinusoid( fs  ,f1 , A , t1 ,t2 , shift);

f2=150
s2=sinusoid( fs  ,f2, A , t1 ,t2 , shift);

f3=250
s3=sinusoid( fs  ,f3, A , t1 ,t2 , shift);
S=[s1,s2,s3]
lenghtofOverlap=512;
index=1:lenghtofOverlap;
for k=0:1
    f=S(index+(k.*(lenghtofOverlap/2)));
    figure
    stem(f)
    title('50% Overlapped Sinusoid')
    ylabel('Amplitude');
    %pause(5)
end