clear all
clc

fs=100;
N=3;
B=1/N.*ones(1,3);

f=[20 30 40];
y=sinusoid(fs ,f(1) ,1 ,0 ,3 ,0);
for ii=2:length(f)
    y=y+sinusoid(fs ,f(ii) ,1 ,0 ,3 ,0);
end

filtered=filter(B,1,y);

figure
plot(abs(fft(y)))
title('Signal Response')
ylabel('Magnitude')
xlabel('Frequency')

figure
plot(abs(fft(filtered)))
title('System Response')
ylabel('Magnitude')
xlabel('Frequency')
% 4.4