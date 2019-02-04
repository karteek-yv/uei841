%Code-14: Phase plane of Van der Pol oscillator: Ex-2.6 Khalil.
clear all;
close all;
lim=5;
x1 = linspace(-lim,lim,20);
x2 = linspace(-lim,lim,20);

[x,y] = meshgrid(x1,x2);
u = zeros(size(x));
v = zeros(size(x));
t=0; % starting time
for i = 1:numel(x)
    yprime = f(t,[x(i); y(i)]);
    u(i) = yprime(1);
    v(i) = yprime(2);
end
figure();
set(gcf, 'Position',  [10, 10, 1900, 1100]);
quiver(x,y,u,v,'r','linewidth',2); %Vector field plot
set(0,'defaulttextinterpreter','latex')
xlabel('$$x_1$$')
ylabel('$$x_2$$')
hold on
%Solution of differential eqautions and plot
for x10 = -3:1:3
	for x20 = -3:1:3
		[ts,xs] = ode45(@f,[0,2],[x10;x20]);
    	plot(xs(:,1),xs(:,2),'linewidth',2)
    	plot(xs(1,1),xs(1,2),'bo','MarkerSize',8,'MarkerFaceColor','b') % starting point
    	plot(xs(end,1),xs(end,2),'ks','MarkerSize',8,'MarkerFaceColor','k') % ending point
    end
end
hold off
axis([-lim lim -lim lim]);
title('Phase plane');
[legh,objh,outh,outm] =legend({'Vector field','$x_{1}$ vs $x_{2}$','Starting point','Ending point'},'Location','north','Orientation','horizontal');
%set(outh,'linewidth',1);
hF=findobj(objh,'type','text');  % get the lines, not text
set(hF,'Interpreter','latex');
set(hF,'FontSize',20,'fontWeight','bold');
hL=findobj(objh,'type','line');  % get the lines, not text
set(hL,'linewidth',2)            % set their width property
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');
function dxdt = f(t,x)
	ep=0.2;
	%ep=1;
	%ep=5;
	%dxdt = [x(2); -x(1)+ep*(1-x(1)^2)*x(2)]; %Van der Pol oscillator
	%dxdt = [-x(2); x(1)-ep*(1-x(1)^2)*x(2)]; %Van der Pol equation in reverse time
	dxdt = [-x(1) + x(1)*x(2); x(1) + x(2) - 2*x(1)*x(2)];
end
