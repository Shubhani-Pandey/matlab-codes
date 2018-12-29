t=0:0.01:1;
fm=10;
x1=cos(2*pi*fm*t)
subplot(2,2,1);
plot(t,x1)

fs1=1.5*fm
n1=0.1:1/fs1:1;
x2=cos(2*pi*fm*n1)
subplot(2,2,2)
plot(t,x1,'b',n1,x2,'r')

fs2=2*fm
n2=0.1:1/fs2:1;
x3=cos(2*pi*fm*n2)
subplot(2,2,3)
plot(t,x1,'b',n2,x3,'r')

fs3=3*fm
n3=0.1:1/fs3:1;
x3=cos(2*pi*fm*n3)
subplot(2,2,4)
plot(t,x1,'b',n3,x3,'r')



