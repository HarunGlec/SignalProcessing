clear all

fs = 1000; %value of sampling frequency
f=30;%value of frequency
A=1; % value of magnitude
t1=0;% start time
t2 = 0.3;%stop time
shift=0;%shift phase
x1=sinusoid(fs ,f, A , t1 ,t2 , shift);%generate 3 random sinusoid

h = hanning(length(x1)); %hanning of x1
figure
subplot(1,2,1)
stem(h) %%stem of Hanning window
title('Hanning Window');
xlabel('Samples')
ylabel('Amplitude')
x1 = x1(:) .* h(:); %% multiply elemet-by-element x1 by hanning
subplot(1,2,2)
stem(x1) % stem of x1 hanning form
title('Multiplied by hanning');
xlabel('Samples')
ylabel('Amplitude')