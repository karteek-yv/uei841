%s=tf('s');
close all
clear all
ws=1;
for w=0.01:0.02:10
x=2*pi/ws* sin(pi*w/ws)/(pi*w/ws);
if x<0
    x=-x;
end
%y=sin(2*pi*w/ws)/w+((cos(2*pi*w/ws)-1)/w)*i;
y=sin(pi*w/ws)-pi*w/ws;
subplot(2,1,1);plot(w/ws,x);
hold on
%subplot(2,1,2);plot(w/ws,angle(y));
subplot(2,1,2);plot(w/ws,y);
hold on
end
%bode(sys).
