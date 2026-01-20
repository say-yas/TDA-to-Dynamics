%inicio runge sinchronization
 clear all
   clc
   format long
   a=20000;
 
  fz=zeros(a,1);
 fx=zeros(a,1);
 fy=zeros(a,1);
 wz=zeros(a,1);
 wx=zeros(a,1);
 wy=zeros(a,1);
 t=zeros(a,1);
 fo=zeros(a,1);

%condiciones iniciales
  
           wx(1)= 3.24186740000000;    
           wy(1)= -9.31573220000000;
           wz(1)=4.45447630000000;
           %h=0.000005;
           h=(10^-5);
           t(1)=0.0;          
for   i=118  %(R=68,i = 50:-1:43)
    R=25+i;
  f=10./(R);
  fo(1)=f;
 runge
      wx=wx';
      wy=wy';
      wz=wz';
      
      wx = wx(7300:end);
      wy = wy(7300:end);
      wz = wz(7300:end);

    eval (['save master',int2str(i),'.dat wx -ascii']);
    eval (['save slave',int2str(i),'.dat wy -ascii']);
    eval (['save zeta',int2str(i),'.dat wz -ascii']);
    fprintf('%i\n', R)
    figure(1)
   plot3(wx, wy, wz, 'b'); % 3D plot

   %save wx.dat wx -ascii; 


  % Ensures equal scaling for all three axes

    %view(2);                % Set the view to 2D (XY plane)
    %xlabel('wx');
    %ylabel('wy');
    %zlabel('wz');
    pause(2.5)
    
    
    lwx=length(wx);
    lwy=length(wy);
    lwz=length(wz);
    wx(1)=wx(lwx);
    wy(1)=wx(lwy);
    wz(1)=wz(lwz);
    
 
end 
   %t=t'; 
%save t.dat t -ascii;
  %clear all;

  %save t.dat t -ascii;
%plot(t,wx,'r-',t,wy,'k.-',t,wz,'b.-')
%BIF2
%TF2
image_matrix = cat(3, wx, wy, wz);
