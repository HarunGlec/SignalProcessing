[y,Fs,bits]=wavread('tone.wav');
a=y(1:10000);
subplot(2,1,1);
plot(a)
sound(y)