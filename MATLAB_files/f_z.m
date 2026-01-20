%lorentz
function fz=f_z(t,x,y,z,fo)
a=10^4;%2.5;

fz=-a.*(-geos(x)+z);
