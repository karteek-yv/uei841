%Zero-order hold bode plot
clear all; close all;
T=0.001;
s=tf('s');
sys=((1+T*s)/T)*((1-exp(-T*s))/s)^2
%sys1=tf([1],[1 0]);
%sys2=tf([1],[1 0],'InputDelay', T);
%sys3=tf([T 1],[T]);
%sys=sys3*(sys1-sys2)^2
bode(sys)
