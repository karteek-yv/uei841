%Code-4: Chaos : Slotine
clear all;
close all;
[t,x] = ode45(@nl,[0 50],[2; 3]);
figure();
set(gcf, 'Position',  [10, 10, 1900, 1100])
hold all;
plot(t,x(:,1),'linewidth',2);
[t,x] = ode45(@nl,[0 50],[2.01; 3.01]);
plot(t,x(:,1),'linewidth',2);
title('Solution');
xlabel('Time t');
ylabel('Solution x');
legend('x_{11}','x_{12}')

function dxdt = nl(t,x)
	dxdt = [x(2); -0.1*x(2) - x(1)^5 + 6*sin(t)];
end
