Fs = 10000; % Sampling frequency
N = 41; % Filter length
M = [0 0 1 1 0 0]; % Desired magnitude response
F = [0, 0.1, 0.2, 0.3, 0.4, 1 ]; % Band edge frequencies
b = remez(N-1, F, M); % Compute the filter coefficients
[H, f] = freqz(b, 1, 512, Fs); % Compute the frequency response
mag = 20*log10(abs(H)); % of filter and plot it
plot(f, mag)
xlabel('Frequency (Hz)')
ylabel('Magnitude (dB)')
