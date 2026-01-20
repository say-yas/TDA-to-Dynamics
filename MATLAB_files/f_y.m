%lorentz
function fy=f_y(t,x,y,z,fo)
a=10^4;%2.5;
fy=-a.*(-x-fo.*y+0.02.*y);