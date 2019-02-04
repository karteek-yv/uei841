%Code-3: Example 1.3 Slotine
clear all;
close all;
figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
hold all;
for i=-5:1:5
	for j=-5:1:5
		[t,x] = ode45(@nl,[0 20],[i; j]);
		plot(x(:,1),x(:,2))
	end
end
title('Phase portrait of Van der Pol equation with c=k=1 using ODE45');

[t,x] = ode45(@nl,[0 60],[3,3]);
figure();
plot(t,x(:,1),'-o',t,x(:,2),'-o');
title('Solution of Van der Pol equation with c=k=1, x_1(0) = 3 and x_2(0)=3 using ODE45');
xlabel('Time t');
ylabel('Solution x');
legend('x_1','x_2')
set(gcf, 'Position',  [0, 0, 1900, 1100])

function dxdt = nl(t,x)
	dxdt = [x(2); (1-x(1)^2)*x(2)-x(1)];
end
