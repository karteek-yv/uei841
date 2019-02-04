%Code-8: Phase plane of ex-2.1 Khalil.
clear all;
close all;
x1 = linspace(-0.4,1.6,20);
x2 = linspace(-0.4,1.6,20);

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
set(gcf, 'Position',  [0, 0, 1920, 1080]);
hold on
quiver(x,y,u,v,'r','linewidth',2); %Vector field plot
set(0,'defaulttextinterpreter','latex')
xlabel('$$x_1$$')
ylabel('$$x_2$$')
%Solution of differential eqautions and plots

for x10 = -0.4:0.4:1.6
	for x20 = -0.4:0.4:1.6
		[ts,xs] = ode45(@f,[0,30],[x10;x20]);
		plot(xs(:,1),xs(:,2),'linewidth',2)
		plot(xs(1,1),xs(1,2),'bo','MarkerSize',8,'MarkerFaceColor','b') % starting point
		plot(xs(end,1),xs(end,2),'ks','MarkerSize',8,'MarkerFaceColor','k') % ending point
    end
end
x10=0.28;x20=0.61;
[ts,xs] = ode45(@f,[0,30],[x10;x20]);
plot(xs(:,1),xs(:,2),'linewidth',2)
plot(xs(1,1),xs(1,2),'bo','MarkerSize',8,'MarkerFaceColor','b') % starting point
plot(xs(end,1),xs(end,2),'ks','MarkerSize',8,'MarkerFaceColor','k') % ending point
x10=0.29;x20=0.61;
[ts,xs] = ode45(@f,[0,30],[x10;x20]);
plot(xs(:,1),xs(:,2),'linewidth',2)
plot(xs(1,1),xs(1,2),'bo','MarkerSize',8,'MarkerFaceColor','b') % starting point
plot(xs(end,1),xs(end,2),'ks','MarkerSize',8,'MarkerFaceColor','k') % ending point
q1=[0.063;0.285;0.884]; q2= [0.758;0.61;0.21]; %Load line
x10=-0.4;x20=1.2537081295;
[ts,xs] = ode45(@f,[0,30],[x10;x20]);
plot(xs(:,1),xs(:,2),'linewidth',2)
plot(xs(1,1),xs(1,2),'bo','MarkerSize',8,'MarkerFaceColor','b') % starting point
plot(xs(end,1),xs(end,2),'ks','MarkerSize',8,'MarkerFaceColor','k') % ending point
x10=0.778989709423;x20=-0.4;
[ts,xs] = ode45(@f,[0,30],[x10;x20]);
plot(xs(:,1),xs(:,2),'linewidth',2)
plot(xs(1,1),xs(1,2),'bo','MarkerSize',8,'MarkerFaceColor','b') % starting point
plot(xs(end,1),xs(end,2),'ks','MarkerSize',8,'MarkerFaceColor','k') % ending point
q1=[0.063;0.285;0.884]; q2= [0.758;0.61;0.21]; %Load line
qp=plot(q1,q2,'m--','linewidth',2);
hold off
grid on
axis([-0.4 1.6 -0.4 1.9]);
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
%legend(qp,{'Load line'},'Location','southeast');
function dxdt = f(t,x)
	dxdt = [0.5*(-17.76*x(1)+103.79*x(1)^2-229.62*x(1)^3+226.31*x(1)^4-83.72*x(1)^5+x(2)); 0.2*(-x(1)-1.5*x(2)+1.2)];
end
