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

S=[s1,s2,s3]
lengthofOverlap=64;
index=1:lengthofOverlap;
h=hamming(lengthofOverlap)';
count=20;
spectrogram=zeros(lengthofOverlap,count);
for k=1:count
    frame=S(index+((k-1).*(lengthofOverlap/2)));
    window=frame.*h;
    spec=fft(window);
    spectrogram(:,k)=spec;
end
figure
imagesc(abs(spectrogram))
xlabel('Time(s)')
ylabel('Frequency')
title('Spectogram')
