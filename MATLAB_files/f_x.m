%lorentz
function fx=f_x(t,x,y,z,fo)
a=10^4;%2.5;
G=0.05;
beta=0.5;
L=1.0;
fx=-a.*(G.*x+beta.*y+L.*z);