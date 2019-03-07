z=[1,1,0,2]';w=[i, 0,1,i]';
c=cconv(z,w,4)
fft(cconv(z,w,4))==fft(z).*fft(w)
tic
fz=fft(z);
fw=fft(w);
res=fft(cconv(z,w,4));
toc

%4
fft(cconv(z,w,4))==fft(z).*fft(w)

tic
fz=fft(z);
fw=fft(w);
res=fft(conv(z,w));
toc