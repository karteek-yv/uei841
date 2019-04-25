clear all;
close all;
[n,d]=zp2tf([],[0,-1,-10],25);
sys1=tf(n,d)
figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
rlocus(sys1)
set(findall(gcf,'Type','line'),'LineWidth',2);
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');
figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
margin(sys1);
set(findall(gcf,'Type','line'),'LineWidth',2);
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');
figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
nyquist(sys1);
n = 1000; 
theta = linspace(0, 2*pi, n);
x = cos(theta);
y = sin(theta);
hold on;
plot(x,y,'r')
hold off;
xlabel('Real axis');
ylabel('Imaginary axis');
set(findall(gcf,'Type','line'),'LineWidth',2);
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');
figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
csys=feedback(sys,1)
step(csys);
set(findall(gcf,'Type','line'),'LineWidth',2);
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');
