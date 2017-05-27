clear all

h_num = [0.0403 0.1208 0.1208 0.0403];
h_den = [1 -1.4726 1.1715 -0.3767];

figure
impz(h_num, h_den)

figure
freqz(h_num, h_den)
title('Magnitude and Phase Response')
