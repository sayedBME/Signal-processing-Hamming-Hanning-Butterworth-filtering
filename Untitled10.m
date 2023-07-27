N = 2; % Filter order
Fs = 1280; % Sampling frequency
fc =150; % Cutoff frequency
WC = 2*pi*fc; % Cutoff frequency in radians
[b, a] = butter(N, WC, 's'); % Create the analog filter
[z, p, k] = butter (N, WC, 's');
[bz, az] = impinvar (b, a, Fs); % Convert into a discrete filter
subplot(2,1,1) % Plot magnitude freq. response
[H, f] = freqz(bz, az, 512, Fs);
plot(f,20*log10(abs(H)))
xlabel('Frequency (Hz)')
ylabel('Magnitude Response (dB)')
subplot(2,1,2) % Plot pole·zero diagram
zplane(bz, az)
zz=roots(bz); % Determine poles and zeros
pz=roots(az);
