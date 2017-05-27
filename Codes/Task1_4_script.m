clear all %clear everything
x=unit_step(10,3);
stem(x)
axis([0 10 0 1.5])
title('Unit Step')
xlabel('Time')
ylabel('Value')