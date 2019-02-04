%Code-14: Phase plane : Khalil p2.4 (1), Khalil p2.4 (2)
clear all;
close all;

figure();
set(gcf, 'Position',  [10, 10, 1900, 1100]);
set(0,'defaulttextinterpreter','latex')
xlabel('$$x_1$$')
ylabel('$$x_2$$')
hold on
%Solution of differential eqautions and plot
for x10 = -6:1:6 %Khalil p2.4 (1)
	for x20 = -6:1:6
%for x10 = -0.5:0.2:0.51 %Khalil p2.4 (2)
%	for x20 = -6:3:6
		[ts,xs] = ode45(@f,[0,10],[x10;x20]);
    	plot(xs(:,1),xs(:,2),'linewidth',2)
    end
end
hold off
axis([-6 6 -6 6]);
title('Phase plane');
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');
function dxdt = f(t,x)
	dxdt = [x(2); x(1)-2*atan(x(1)+x(2))]; %Khalil p2.4 (1)
%	dxdt = [2*x(1)-x(1)*x(2); 2*x(1)^2-x(2)]; %Khalil p2.4 (2)
end
