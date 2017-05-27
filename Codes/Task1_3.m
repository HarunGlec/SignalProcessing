[y,Fs]=audioread('tone.wav'); %read the tone and assign data, frequency, bits
a=y(1:100000); % to get shorten data
plot(a)%plot waveform
xlabel('Time (Microsecond)')
ylabel('Amplitude')
title('Sound Waveform')
sound(a,Fs)%sound music
