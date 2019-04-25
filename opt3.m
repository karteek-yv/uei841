clear all;
close all;
%J(x) = 0.5*(x(1)^2 + x(2)^2), constraints g(x): 2 <= x(1) <= 3 & 4 <= x(2) <=5
fun=@(x)0.5*(x(1)^2+x(2)^2);
A=[];
b=[];
Aeq=[];
beq=[];
lb=[2,4];
up=[3,5];
x0 = [2.5,4.5];
[x,fval,exitflag,output,lambda,grad,hessian] = fmincon(fun,x0,A,b,Aeq,beq,lb,up)
