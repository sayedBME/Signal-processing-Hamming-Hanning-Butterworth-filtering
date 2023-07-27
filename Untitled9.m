outhi = filter(bhi,1,y);
subplot(2,1,1)
plot(t,y)
title('Original Signal')
ys = ylim;
subplot(2,1,2)
plot(t,outhi)
title('Lowpass Filtered Signal')
xlabel('Time (s)')
ylim(ys)