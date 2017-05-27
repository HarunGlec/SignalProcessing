clear all %clear everything
fs=10000; %value of sample frequency 
f=5; %value of frequency
a=3; %value of amplitude
t1=0;%start value of function
t2=5;%end value of function
q=0; %phase difference value
plotx = sinusoid(fs , f , a , t1 , t2 , q ); %call sinusoid function and assaign 
plot(plotx) %to draw plotx
axis([0, 40000 , -10 , 10]); %describe axis range
xlabel('Time')
ylabel('Amplitude')
title('Sinusoid')