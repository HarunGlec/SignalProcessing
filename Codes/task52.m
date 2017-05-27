clear all

[zRe, zIm] = meshgrid(-1.5 : 0.055 : 1.5, -1.5 : 0.055 : 1.5);

z = zRe + 1i .* zIm;

H  = 0.0403 + 0.1208 .* (z .^ -1) + 0.1208  .* (z .^ -2)  + 0.0403 .* (z .^ -3);
H = H ./ (1 - 1.4726 .* (z .^ -1) + 1.1715  .* (z .^ -2) - 0.3767  .* (z .^ -3));

surf(zRe,zIm,abs(H)); 
xlabel('Real Axis')
ylabel('Imagenary Axis')
zlabel('Magnitude')
title('Magnitude of Complex Function')