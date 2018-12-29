b=[1];
a=[1 -0.9];
w=[-2:1:2]*pi;
h=freqz(b,a,w)
magh=abs(h)
angh=angle(h)

figure
subplot(3,1,1)
plot(w/pi,magh)

subplot(3,1,2)
plot(w/pi,angh)

subplot(3,1,3)
zplane(b,a)