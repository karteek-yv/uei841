%Code-12: dot(V(x1)) and h(x2) plot: page-56 Khalil.
clear all;
close all;
x=linspace(-2,2,2000);
figure();
set(gcf, 'Position',  [10, 10, 1900, 1100]);
plot(x,x.^2-(1/3)*x.^4,'linewidth',2);
hold on;
x=linspace(-2.25,2.25,2000);
plot(x,-x+(1/3)*x.^3,'linewidth',2);
grid on;
hold off;
axis([-2.25 2.25 -1.5 1.5]);
set(0,'defaulttextinterpreter','latex')
xlabel('$x_2$')
ylabel('Function value')
%set(outh,'linewidth',1);
[legh,objh,outh,outm] =legend({'$\dot{V}=x_2^2-\frac{1}{3}x_2^4$','$h(x_2)=-x_2 + \frac{1}{3}x_2^3$'},'Interpreter','latex','Location','north','Orientation','horizontal');
%[legh,objh,outh,outm] =legend({'$\dot{V}=x_{2}^2-\frac{1}{3}x_{2}^4$','$h(x)=-x_{2}+\frac{1}{3}x_{2}^3$'},'Location','north','Orientation','horizontal');
%set(outh,'linewidth',1);
hF=findobj(objh,'type','text');  % get the lines, not text
set(hF,'FontSize',20,'fontWeight','bold');
hL=findobj(objh,'type','line');  % get the lines, not text
set(hL,'linewidth',2)            % set their width property
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');
