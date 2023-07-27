FS=1000;
FN=FS/2;
N=73;
beta=5.65; 
fc1=125/FN; 
fc2=275/FN; 
FC=[fc1 fc2];
hn=fir1 (N-1, FC,kaiser(N, beta)); 
[H,f]=freqz(hn, 1, 512, FS); 
mag=20*log10(abs(H));
plot (f, mag)
grid on
xlabel ('Frequency (Hz)')
ylabel ('Magnitude Response(dB)')
