Fs = 2000; % Sampling frequency
N = 110; % Filter length
fd = [0 0.15 0.25 0.45 0.5 0.75 0.85 1]; % Frequency sampling points
Hd = [1 1 0.3 0.3 0.1 0.1 0 0]; % Frequency samples
hn = fir2(N-1, fd, Hd); % Compute the impulse response
[H, f] = freqz(hn, 1, 512, Fs);
plot(f, abs(H)) 
grid on
xlabel('Frequency (Hz)')
ylabel('Magnitude')