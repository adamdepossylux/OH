load handel
%sound(y,Fs)

fs=44100;
T=1/fs;
n=[0:T:2];
f1=50;f2=15000;
omega1=2*pi*f1;omega2=2*pi*f2;
z1=5*cos(omega1*n); z2=3*sin(omega2*n);
sound(z1,fs);
sound(y,Fs)
sound(z2,fs);
sound(z1+z2,fs);
plot(n,z1);
xlabel('Temps(seconds)');
ylabel('z1');
title('Signal audio 1')
figure(2)
plot(n,z2);
xlabel('Temps(seconds)');
ylabel('z2');
title('Signal audio 2')

%4
figure(3)
plot(abs(fftshift(fft(z1))))
title('meth 1 audio 1')
figure(4)
plot(abs(fftshift(fft(z2))))
title('meth 1 audio 2')
figure(5)
plot(abs(fftshift(fft(z1+z2))))
title('meth 1 z1 + z2')
%5
N=[0:size(z1,2)-1];
N2=[0:size(z1+z2,2)-1];
r=ones(size(z1,2),1);
r2=ones(size(z1+z2,2),1);
%r([1:2:size(z1,2)])=-1;
%r([1:2:size(z1+z2,2)])=-1;
z11=(-1).^N.*z1;
z22=(-1).^N.*z2;
fz11=fft((-1).^N.*z1);
fz21=fft((-1).^N.*z2);
fz12=fft((-1).^N2.*(z1+z2));
z1([1:2:size(z1,2)])=-z1([1:2:size(z1,2)]);
z2([1:2:size(z2,2)])=-z2([1:2:size(z2,2)]);
%fz1=fft(r*z1);
%fz2=fft(r*z2);
%fz12=fft(r2*(z1+z2));
figure(6)
plot(abs(fft(z1)))
title('meth 2 1')
figure(7)
plot(abs(fft(z2)))
title('met 2 2')
figure(8)
plot(abs(fz12))
title('meth 2 z1 + z2 ')

