clear all;

z1=sqrt(2)+1j.*sqrt(2);% define complex  number functions
z2=3-1j.*4;% define complex  number functions
z3=5*exp(1j.*pi/3);% define complex  number functions
z4=2*exp(-1j.*pi/6);% define complex  number functions

r1=abs(z1);%calculate module of complex number
tanTeta1=imag(z1)/real(z1); % calculate tangant teta of complex number
teta=atan(tanTeta1); % calculate teta in radian form
teta=360/(2*pi)*teta; % convert teta radian to degree form
S=sprintf('z1=%dcis(%d)',r1,ceil(teta)); % show polar form
disp(S);

r2=abs(z2);%calculate module of complex number
tanTeta2=imag(z2)/real(z2);% calculate tangant teta of complex number
teta2=atan(tanTeta2);% calculate teta in radian form
teta2=360/(2*pi)*teta2;% convert teta radian to degree form
S=sprintf('z2=%dcis(%d)',r2,int32(teta2));% show polar form
disp(S);

S=sprintf( 'z3=%s' , num2str(z3) );
disp(S);%show rectangular form
S=sprintf( 'z4=%s' , num2str(z4) );
disp(S);%show rectangular form

S=sprintf('z1*z2=%.2f+(%.2fj)' , real(z1*z2),imag(z1*z2));
disp(S)
S=sprintf('z1/z2=%.2f+(%.2fj)' , real(z1/z2),imag(z1/z2));
disp(S)
teta3=(360/(2*pi)*atan(imag(z3)/real(z3)));
teta4=(360/(2*pi)*atan(imag(z4)/real(z4)));
S=sprintf('z3*z4=%.2fcis(%.0f)' ,abs(z3)*abs(z4),(teta3+teta4));
disp(S)
S=sprintf('z3/z4=%.2fcis(%.0f)' ,abs(z3)/abs(z4),(teta3-teta4));
disp(S)