%function lmi1
clear all;
close all;
%[A,B,C,D]=tf2ss([1],[2 3 4]);
%[A,B,C,D]=tf2ss([1],[1 -2 3 4]);
%A=[-1 -2 1;3 2 1; 1 -2 -1];
%[A,B,C,D]=tf2ss([1],[1 -2 1]);
[N,D]=zp2tf([],[-0.5,-1,-1+i,-1-i],1);
[A,B,C,D]=tf2ss(N,D);
setlmis([]) 
X=lmivar(1,[max(size(A)) 1]) 

% 1st LMI 
lmiterm([1 1 1 X],1,A,'s') 
%lmiterm([1 1 1 S],C',C) 
%lmiterm([1 1 2 X],1,B) 
%lmiterm([1 2 2 S],-1,1)
lmiterm([-2 1 1 X],1,1)
lmiterm([2 1 1 0],1)

lmis = getlmis;
[tmin,xfeas] = feasp(lmis);
P1 = dec2mat(lmis,xfeas,X);
tmin

%end
