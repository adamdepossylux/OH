%1
n=4;
w=fft(eye(n));
%2
w1=dftmtx(n);%génère directement la matrice de Vandermonde
winv1=inv(w1);
winv1==(1/n)*conj(w1)
%3
(1/16)*w^4; %puissance matricielle
w.^4; %puissance ponctuelle
w.^4==(1/16)*w^4
%4
eig(w)%on retrouve biens les valeurs propres calculées en TD
%5
z=[1;0;-3;4];
w*z==fft(z)
%6
(1/4)*w^2*z
%7
ifft(fft(z))==winv1*fft(z)
%8
delta=zeros(1,20);
delta(1)=1;
sp=fft(delta);%transformation de Fourier de la réponse unitaire, complètement délocalisée
stem(sp);
%9
R5delta=zeros(1,20);
R5delta(5)=1;
figure(2)
stem(R5delta);
figure(3)
fRdelta=fft(R5delta);%le même que le précédent
aspz=abs(fRdelta);
stem(aspz);
ispz=angle(fRdelta);%retrouve l'exponentiel
R5delta_reconstruct=ifft(aspz.*exp(i.*ispz));
figure(4)
stem(R5delta_reconstruct)

