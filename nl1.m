%Code-1: Example 1.1 Slotine
clear all;
close all;
figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
hold all;
x0=0;
[t1,x1] = ode45(@nlfun1,[0 5],x0);
[t2,x2] = ode45(@nlfun2,[5 20],x1(end,1));
plot(t1,x1,'linewidth',2)
plot(t2,x2,'linewidth',2)
title('Solution with ODE45');
xlabel('Time t');
ylabel('Solution x');
legend('x_1')
set(gcf, 'Position',  [0, 0, 1900, 1100])

function dxdt = nlfun1(t,x)
	dxdt = [-abs(x)*x+10];
end

function dxdt = nlfun2(t,x)
	dxdt = [-abs(x)*x];
end
