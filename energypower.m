t=-2:0.001:2;
x=[zeros(1,1000),2*ones(1,1000),-t(2001:end)+2]
subplot(2,3,1);
plot(t,x)
ylim([-0.2,2.2]);
title('original signal')

energy=sum(x.^2)*0.001;
power=energy/(max(t)-min(t));
x_r=[];
for i=length(t):-1:1
    x_r(length(t)-i+1)=x(i);
end
x_ev=(x+x_r)/2;
x_odd=(x-x_r)/2;

subplot(2,3,2);
plot(t,x_ev)
title('even')

subplot(2,3,3);
plot(t,x_odd)
title('odd')
