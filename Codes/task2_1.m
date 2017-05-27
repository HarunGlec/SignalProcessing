clear all
 
cplx=3+5i; %define any complex number
x=real(cplx); %real part of complex number
y=imag(cplx); %imaginary part of complex number
 
modulo=abs(cplx); %modul of complex number
 
teta= 360/(2*pi)*atan(imag(cplx)/real(cplx));% argument of complex number in degree form
a=0:0.02: (pi / (180/teta)); %%
Z=cos(a); %%Draw argument of complex number
T=sin(a); %%
plot([0 real(cplx)], [0 imag(cplx)],Z,T,x,y,'*','MarkerSize',8) 
 
axis([0,x+2,0,y+2]);%length of axis
 
line([x x], [0 y],'LineStyle', '- -'); %to make dashed line imaginer 
line([0 x], [y y],'LineStyle', '- -'); %to make dashed line imaginer
 
x1 = x/4;
y1 = y/9;
S=sprintf('%.2f%c',teta,char(176)); %Assign argument to variable in string format
text(x1,y1,S) %Write argument to graphic
 
x1 = x/2;
y1 = y/2;
S=sprintf('|z|=%.2f',modulo);%Assign modul of compex number to variable in string format
text(x1,y1,S )%Write modul of complex number to graphic
 
x1 = x/2;
y1 = y+0.2;
S=sprintf('Real=%d',x); %Assign real part of complex number in string format 
text(x1,y1,S)%Write real part of complex number to graphic

x1 = x+0.2; 
y1 = y/2;
S=sprintf('Imaginer=%d',y); %Assign real part of complex number in string format 
text(x1,y1,S)%Write real part of complex number to graphic
 
xlabel('Real'); % Name of x-Label
ylabel('Imaginer'); % Name of y-Label
title('Illustration of Complex Number')
grid on