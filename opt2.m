clear all;
close all;
%J(x) = 0.5*(x(1)^2 + x(2)^2) and constraints g(x): x(1) - x(2) <=5 &  x(1) - x(2) >= 1
fun=@(x)(x(1)^2+x(2)^2);
A=[1,-1;-1,1];
b=[5;-1];
Aeq=[];
beq=[];
x0 = [0,0];
x = fmincon(fun,x0,A,b,Aeq,beq)
