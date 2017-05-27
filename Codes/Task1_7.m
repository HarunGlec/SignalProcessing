clear all %clear everything
fs=1000; %value of frequency 
a=1; %value of amplitude
t1=0;%start value of function
t2=3;%end value of function
q=0; %phase difference value
freq=[200,0,0,100,-100,-100,-200,0,200,200,0,0,100,-100,-100,-200,0,-200];
timeEx=[8,8,8,8,8,8,16,16,4,8,8,8,8,8,8,16,16,4];
x=[];
for ii=1:length(freq)
    x=[x sinusoid(fs, 1000+freq(ii), a , t1 , t2/timeEx(ii) , q )];
end
sound(x)%Play song