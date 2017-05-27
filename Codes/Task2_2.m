clear all

n = 0:60 ;%define n 0 to 60 

Zo = 4; 

Zr=1*exp(1*i*5/360*(2*pi)); % define asked function

a= (Zr.^n) * Zo; %generate graphic

Zr2 =0.9*exp(1*i*10/360*(2*pi)); %define other function
Zr3 = 1*exp(-1*i*5/360*(2*pi)); %define other function
Zr4 = 1.1*exp(-1*i*5/360*(2*pi)); %define other function

subplot(2 , 2 , 1) 
plot(a)
title('(1e^j^5)^n*Zo')
subplot(2 , 2 , 2)
plot((4.^1*i*30)*(Zr2.^n))
title('(0.9e^j^5)^n*Zo')
subplot(2 , 2 , 3)
plot((4.^1*i*30)*(Zr3.^n))
title('(1e^-^j^5)^n*Zo')
subplot(2 , 2 , 4)
plot((4.^1*i*30)*(Zr4.^n))
title('(1.1e^-^j^5)^n*Zo')