%Code 9: Equilibrium points of tunnel diode, ex-2.1 Khalil.
r=roots([-83.72 226.31 -229.62 103.79 -17.76-2/3 1.2/1.5]);
p=1;
for q= 1:size(r,1)
	if isreal(r(q))
		fprintf('Equilibrium point:%d is (%f,%f)\n',p,r(q),(-r(q)+1.2)/1.5);
		p=p+1;
	end
end
