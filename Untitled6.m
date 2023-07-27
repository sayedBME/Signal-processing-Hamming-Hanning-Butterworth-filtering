N =15;
fd = [ 0 1/7 2/7 3/7 4/7 5/7 6/7 1];
Hd = [ 1 1 1 1 0.5571 0.0841 0 0];
hn=fir2(N-1, fd, Hd);
[H, f] = freqz(hn, 1 , 512, Fs);
plot(f, abs(H)), grid on
xlabel('Frequency (Hz)')
ylabel('Magnitude')
