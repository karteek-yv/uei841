%LMI example with SeDuMi solver
%run "addpath(genpath('sedumi-master'))" and "addpath(genpath('YALMIP-develop'))" after launching matlab to add folder paths
clear all;
close all;
%[A,B,C,D]=tf2ss([1],[2 3 4]);
%[A,B,C,D]=tf2ss([1],[1 -2 3 4]);
%A=[-1 -2 1;3 2 1; 1 -2 -1];
%[A,B,C,D]=tf2ss([1],[1 -2 1]);
%[N,D]=zp2tf([],[-0.5,-1,-1+i,-1-i],1);
%[A,B,C,D]=tf2ss(N,D);
A=[0 4;-8 -12];
sz=max(size(A));
P = sdpvar(sz,sz);
F=[P>=eye(sz)*1e-8,A'*P + P*A <=-eye(sz)]
tt=optimize(F)
P1=double(P)
