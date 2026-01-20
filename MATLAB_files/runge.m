%programa que calcula rungekuta
for n=1:20000
    t(n+1)=t(n)+h; 
     fo(n+1)=fo(n);
    %*****************************************
    kx1=h*f_x(t(n),wx(n),wy(n),wz(n),fo(n));
    ky1=h*f_y(t(n),wx(n),wy(n),wz(n),fo(n));
    kz1=h*f_z(t(n),wx(n),wy(n),wz(n),fo(n));
    %*****************************************
    kx2=h*f_x(t(n)+h/2,wx(n)+kx1/2,wy(n)+ky1/2,wz(n)+kz1/2,fo(n));
    ky2=h*f_y(t(n)+h/2,wx(n)+kx1/2,wy(n)+ky1/2,wz(n)+kz1/2,fo(n));
    kz2=h*f_z(t(n)+h/2,wx(n)+kx1/2,wy(n)+ky1/2,wz(n)+kz1/2,fo(n));
    %******************************************
    kx3=h*f_x(t(n)+h/2,wx(n)+kx2/2,wy(n)+ky2/2,wz(n)+kz2/2,fo(n));
    ky3=h*f_y(t(n)+h/2,wx(n)+kx2/2,wy(n)+ky2/2,wz(n)+kz2/2,fo(n));
    kz3=h*f_z(t(n)+h/2,wx(n)+kx2/2,wy(n)+ky2/2,wz(n)+kz2/2,fo(n));
    %******************************************
    kx4=h*f_x(t(n+1),wx(n)+kx3,wy(n)+ky3,wz(n)+kz3,fo(n));
    ky4=h*f_y(t(n+1),wx(n)+kx3,wy(n)+ky3,wz(n)+kz3,fo(n));
    kz4=h*f_z(t(n+1),wx(n)+kx3,wy(n)+ky3,wz(n)+kz3,fo(n));
   %*************************************************
   wx(n+1)=wx(n)+(kx1+2*kx2+2*kx3+kx4)/6;
   wy(n+1)=wy(n)+(ky1+2*ky2+2*ky3+ky4)/6;
   wz(n+1)=wz(n)+(kz1+2*kz2+2*kz3+kz4)/6;
end