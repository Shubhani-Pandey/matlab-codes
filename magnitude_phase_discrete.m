t=-1:0.01:1;
x=[zeros(1,50),(2*t(51:100))+1,(2*t(101:150))+1,zeros(1,51)];
y=[];
j=complex(0,1);
for w=-10*pi:0.01:10*pi
    sum=0;
    for i=1:length(t)
        sum=sum+x(i)*exp(-j*w*t(i))*0.01;
    end
    y=[y sum];
end
w=-10*pi:0.01:10*pi;

subplot(3,1,1)
plot(t,x);
ylim([-0.2,1.4]);
title('value plot');

subplot(3,1,2)
plot(w,abs(y));
title('magnitude');

subplot(3,1,3)
plot(w,angle(y));
title('phase');



