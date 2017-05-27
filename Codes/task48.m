clear all

b=-2:0.01:2;
y(1)=b(1);
a=1;
for ii=2:size(b,2)
    z(ii)=1/y(ii-1);
    y(ii)=a*z(ii)+b(ii);
end
impz(y*-1)