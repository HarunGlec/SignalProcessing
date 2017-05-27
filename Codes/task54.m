clear all

w=0:0.01:2*pi;

z = exp(1i.*w);

H  = 0.0403 + 0.1208 .* (z .^ -1) + 0.1208  .* (z .^ -2)  + 0.0403 .* (z .^ -3);
H = H ./ (1 - 1.4726 .* (z .^ -1) + 1.1715  .* (z .^ -2) - 0.3767  .* (z .^ -3));

figure
subplot(2, 1, 1)
plot3(real(z),imag(z),abs(H))
xlabel('Real')
ylabel('Imaginer')
zlabel('Module of H')

subplot(2, 1, 2)
plot(w, abs(H))
ylabel('Module of H')