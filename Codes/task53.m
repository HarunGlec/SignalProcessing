h_Num=[0.0403 0.1208 0.1208 0.0403];
h_Den=[1 -1.4726 1.1715 -0.3767];
H= filt (h_Num,h_Den)

bode(H)

Nr=roots(h_Num)
plot(Nr, '*')
Dr=roots(h_Den)
hold on
plot(Dr , 'o')
axis([-1.5 1.5 -1.5 1.5])
xlabel('Real')
ylabel('Imaginer')
title('Zeros and Poles')

den=poly(Dr);
num=poly(Nr);
Hz=num./den;