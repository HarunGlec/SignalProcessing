function result = complex( N )
clear all
 
n= 1 : 100 ; %n=1 to n=100 contain a hundred number
 
result=exp(-(pi * n * 1*i)/20 ); %assaign to result our signal
 
x= real (result) ; %real part of our result
y= imag (result) ; %imaginal part of our result 
z=n; % z index for 3D plot
 
figure % show the  figure
subplot(2,1,1) %to demonstrate two plot in one figure
plot3 (x , y , z ) % Draw 3D plot of signal
grid on ; %open grid
xlabel('Real Axis'); %name of label x
ylabel('Imagenary Axis'); %name of label y
zlabel('Sampling Index'); %name of label z
title('Y[n]') %title of plot
subplot(2,1,2)%to demonstrate two plot in one figure (For Second)
plot(x,y); %Draw 2D plot of signal
xlabel('Real Axis'); %name of label x
ylabel('Imagenary Axis'); %name of label y
figure % show the  figure
plot3(x , -y , z )  % Draw 3D plot of conjugated signal
grid on; %open grid
title('Y^-[n]')%title of plot
 
conjugateresult=x-j*y; %Calculate conjugated signal
 
c = (result + conjugateresult ) / 2; %Assign to c , first function
k=real(c);%real part of C
l=imag(c);%imaginal part of C
 
d = (result - conjugateresult ) / 2; %Assign to d , second function
m=real(d);%real part of D
n=imag(d);%imaginal part of D
xlabel('Real Axis'); %name of label x
ylabel('Imagenary Axis'); %name of label y
zlabel('Sampling Index'); %name of label z 

figure % show the  figure
plot3(k , l , z);
grid on; %open grid
title('(y[n]+y^-[n])/2')%title of plot
xlabel('Real Axis'); %name of label x
ylabel('Imagenary Axis'); %name of label y
zlabel('Sampling Index'); %name of label z

figure % show the  figure
plot3(m , n , z);
grid on; %open grid
title('(y[n]-y^-[n])/2')%title of plot
xlabel('Real Axis'); %name of label x
ylabel('Imagenary Axis'); %name of label y
zlabel('Sampling Index'); %name of label z 
end
