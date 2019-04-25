%Zero-order hold bode plot
clear all; close all;
T=1;
sys1=tf([1],[1 0]);
sys2=tf([1],[1 0],'InputDelay', T);
sys=sys1-sys2;
bode(sys)
