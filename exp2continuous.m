t=(-1:0.01:1)';
impulse=t==0;
unitstep=t>=0;
ramp=t.*unitstep;
quad=t.^2.*unitstep;


subplot(3,3,1);
plot(t,impulse)
title('impulse')


subplot(3,3,2);
plot(t,unitstep)
title('unitstep')


subplot(3,3,3);
plot(t,ramp)
title('ramp')


subplot(3,3,4);
plot(t,quad)
title('quad')


x=0:pi/100:2*pi;
y=sin(2*pi*x);
subplot(3,3,5);
plot(x,y)
title('sin')


z=cos(2*pi*x);
subplot(3,3,6);
plot(x,z)
title('cos')


a=0.2;
b=exp(-a*x);
subplot(3,3,6);
plot(x,b)
title('decreasing exponential')


c=exp(a*x);
subplot(3,3,7)
plot(x,c)
title('increasing exponential')

j=complex(0,1);
d=exp(2*pi*j*x);
subplot(3,3,8);
plot3(x,real(d),imag(d));
title('complex exponential')

d=exp(-2*pi*j*x);
subplot(3,3,9);
plot3(x,real(d),imag(d));
title('negative complex exponential')