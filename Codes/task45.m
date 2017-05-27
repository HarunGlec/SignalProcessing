clear all

N=3;
fs=100;
o=ones(1,N);
B=1/N.*o;
for ii=1:N
    B(ii)=(-1).^(ii-1).*B(ii);
end

x = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];
y=filter(B,1,x);

figure
subplot(3,1,1)
stem(x) %impulse 
ylabel('Amplitude')
k=fft(y);
subplot(3,1,2)
stem(abs(k))
ylabel('Module')
subplot(3,1,3)
arg=atan(imag(k)./real(k)).*(360/(2*pi));
stem(arg)
ylabel('Argument')

f=[20 30 40];
S=sinusoid(fs ,f(1) ,1 ,0 ,3 ,0);
for ii=2:length(f)
    S=S+sinusoid(fs ,f(ii) ,1 ,0 ,3 ,0);
end

filtered=filter(B,1,S);

figure
subplot(2,1,1)
plot(abs(fft(S)))
title('Signal Response')
ylabel('Magnitude')
xlabel('Frequency')

subplot(2,1,2)
plot(abs(fft(filtered)))
title('System Response')
ylabel('Magnitude')
xlabel('Frequency')
