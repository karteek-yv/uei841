%Code-2: Example 1.2 Slotine
clear all;
close all;
figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
hold all;
for i=-1.2:0.2:1.2
	[t1,x1] = ode45(@nlfun1,[0 1.4],i);
	plot(t1,x1,'linewidth',2);
end
plot(t1,x1,'linewidth',2)
title('Solution with ODE45');
xlabel('Time t');
ylabel('Solution x');
legend('x_1')
set(gcf, 'Position',  [0, 0, 1900, 1100])

function dxdt = nlfun1(t,x)
	dxdt = [-x+x^2];
end
