N = 2; % Filter order
Fs = 1280; % Sampling frequency
FN =Fs/2;
fc = 150; % Cutoff frequency
Fc = fc/FN; % Normalized Cutoff frequency
[b, a] = butter(N, Fc); % Create and digitize analog filter.
[z, p, k] = butter (N, Fc);
subplot(2,1,1) % Plot magnitude freq. response
[H, f] = freqz(b, a, 512, Fs);
plot(f, abs(H))
xlabel('Frequency (Hz)')
ylabel('Magnitude Response')
subplot(2,1,2) % Plot pole-zero diagram
zplane(b, a)