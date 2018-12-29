f=input('fundamental period');
t=0:1/(100*f):(1/f)-(1/(100*f));
x=cos(2*pi*f*t);
j=complex(0,1);
xk=[];
for k=-10:10
    sum=0;
    for i=1:length(t)
        sum=sum+f*x(i)*exp(-j*2*pi*k*f*t(i))*(1/(100*f));
    end
    xk=[xk sum];
end
xk(abs(xk)<10^(-5))=0;
subplot(3,3,1);
plot(t,x);
title('input')

subplot(3,3,2);
stem(-10:10,abs(xk));
title('magnitude')

subplot(3,3,3);
plot(-10:10,angle(xk));
title('phase3')

