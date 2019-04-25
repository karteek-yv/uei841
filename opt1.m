clear all;
close all;
%J(x) = 0.5*(x(1)^2 + x(2)^2) and constraint g(x): x(1) + x(2) =2
fun=@(x)0.5*(x(1)^2+x(2)^2);
A=[];
b=[];
Aeq=[1,1];
beq=2;
x0 = [0,0];
x = fmincon(fun,x0,A,b,Aeq,beq)
