fc = 0.53;
n = 10;
hd = fir1(n-1,fc,boxcar(n));
wn = hamming(n);
hn = fir1 (n-1,fc,wn);
hd=transpose(hd);
hn=transpose(hn);
n=0:n-1;
n=transpose(n);
T=table(n,hd,wn,hn)