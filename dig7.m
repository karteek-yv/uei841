clear all; close all;
%G=zpk([-0.9],[0.905 1],0.005);
%G=zpk([-0.9],[0.1644 1],0.26588);
G=zpk([-0.93],[0.253 1],0.215);
figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
rlocus(G)
n = 1000; 
theta = linspace(0, 2*pi, n);
x = cos(theta);
y = sin(theta);
hold on;
plot(x,y,'r--')
hold off;
axis([-1.5 1.5 -1.5 1.5]);
%xlabel('k');
%ylabel('c(k)');
set(findall(gcf,'Type','line'),'LineWidth',2);
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');
