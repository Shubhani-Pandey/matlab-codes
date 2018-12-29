t=0:0.001:5;
x=[zeros(1,1000),ones(1,1000),zeros(1,3001)];
h=[zeros(1,500),ones(1,2000),zeros(1,2501)];
y=[];
for i=1:length(x)
    y(i)=0;
    for j=1:i;
        y(i)=y(i)+(x(j)*h(i-j+1)*0.001);
    end
end   

n=0:1:5;
xd=[4 3 2 1 0 0];
hd=[7 8 3 0 0 0];
yd=[];
for i=1:length(xd)
    yd(i)=0;
    for j=1:i;
        yd(i)=yd(i)+(xd(j)*hd(i-j+1));
    end
end  

subplot(3,3,1);
plot(t,x)
ylim([-0.2,1.2]);
title('original signal')

subplot(3,3,2);
plot(t,h)
ylim([-0.2,1.2]);
title('impulse response')

subplot(3,3,3);
plot(t,y)
ylim([-0.2,1.2]);
title('output signal')

subplot(3,3,4);
stem(n,xd)
title('original signal')

subplot(3,3,5);
stem(n,hd)

title('impulse response')

subplot(3,3,6);
stem(n,yd)

title('output signal')
        
    
    