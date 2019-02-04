%Code-7: Phase plane of linear systems.
clear all;
close all;
x1 = linspace(-8,8,20);
x2 = linspace(-8,8,20);

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
quiver(x,y,u,v,'r','linewidth',2); %Vector field plot
set(0,'defaulttextinterpreter','latex')
xlabel('$$x_1$$')
ylabel('$$x_2$$')
hold on
%Solution of differential eqautions and plots
for x10 = -8:4:8
	for x20 = -8:4:8
		[ts,xs] = ode45(@f,[0,10],[x10;x20]);
		plot(xs(:,1),xs(:,2),'linewidth',2)
		plot(xs(1,1),xs(1,2),'bo','MarkerSize',8,'MarkerFaceColor','b') % starting point
		plot(xs(end,1),xs(end,2),'ks','MarkerSize',8,'MarkerFaceColor','k') % ending point
    end
end
hold off
axis([-8 8 -8 8]);
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
%Plot of time vs states for x10=8, x20=8
figure()
set(gcf, 'Position',  [0, 0, 1920, 1080]);
plot(ts,xs(:,1),'linewidth',2)
hold on
plot(ts,xs(:,2),'linewidth',2)
hold off
xlabel('Time $$t$$ (s)')
ylabel('State value $$x$$')
title('Solution');
[legh,objh,outh,outm] =legend({'$x_{1}$','$x_{2}$'});
hF=findobj(objh,'type','text');  % get the lines, not text
set(hF,'Interpreter','latex');
set(hF,'FontSize',20,'fontWeight','bold');
hL=findobj(objh,'type','line');  % get the lines, not text
set(hL,'linewidth',2)            % set their width property
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');

function dxdt = f(t,x)
	%k1=-2;k2=-3; %stable node: eigenvalues (-1,-2)
	%k1=-1;k2=-2; %stable node: eigenvalues (-1,-1)
	%k1=1;k2=2; %saddle point: eigenvalues (-1,2)
	%k1=2;k2=-1; %saddle point: eigenvalues (1,-2)
	%k1=-2;k2=3; %unstable node: eigenvalues (1,2)
	%k1=-1;k2=2; %unstable node: eigenvalues (1,1)
	%k1=-1;k2=-1; %stable focus: complex eigenvalues with negative real parts
	%k1=-1;k2=1; %ustable focus: complex eigenvalues with positive real parts
	%k1=-1;k2=0; %center point: complex eigenvalues with zero real parts
	%k1=0; k2=1; %perturbed system unstable equilibrium subspace: one eigenvalue zero and the other eigenvalue real positive
	k1=0; k2=-1; %Perturbed system with stable equilibrium subspace: one eigenvalue zero and the other eigenvalue real negative
	%k1=0; k2=0; %Perturbed system with both the eigenvalues zero
	dxdt = [x(2); k1*x(1)+k2*x(2)];
end
