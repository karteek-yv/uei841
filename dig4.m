
clear all; close all;
num = [0 0.4673, -0.3393];
den = [1 -1.5327 0.6607];
r=ones(1,41);
k=0:40;
c=filter(num,den,r);

figure();
set(gcf, 'Position',  [0, 0, 1900, 1100])
plot(k,c,'o')
xlabel('k');
ylabel('c(k)');
set(findall(gcf,'Type','line'),'LineWidth',2);
set(gca,'FontSize',30,'fontWeight','bold');
set(findall(gcf,'type','text'),'FontSize',30,'fontWeight','bold');



