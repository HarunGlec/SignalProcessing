clear all %clear everything

fs=1000; %value of sample frequency 

f = 5; %value of frequency 

a=5; %value of amplitude

t1=0;%start value of function

t2=2;%end value of function

q=0; %phase difference value

x=sinusoid(fs-150 , f ,a , t1 , t2 , q );%Assign sinusoid to x with decreasing 150 frequency
sound(x) %play the base sound 
pause(2) %wait 2 seconds

x=sinusoid(fs+1000 , f , a , t1 , t2 , q );%Assign sinusoid to x with increasing 1000 frequency
sound(x) %play the base sound 
pause(2) %wait 2 seconds

x=sinusoid(fs , f , a , t1 , t2 , q );%Assign sinusoid to x with baseline values
sound(x) %play the base sound 
pause(2) %wait 2 seconds


x=sinusoid(fs , f , a , t1 , t2 , q+150 );%Assign sunisoid to x with increasing phase value 150
sound(x) %play the base sound
pause(2) %wait 2 seconds

x=sinusoid(fs , f , a+500 , t1 , t2 , q);%Assign sunisoid to x with increasing amplitude value 500
sound(x) %play the base sound