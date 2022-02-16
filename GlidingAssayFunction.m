%function file to obtain forces and average angle and velocity
function [ fpar,fperp,avg_ang, avg_vel ] = avg(Cdpar,Cdperp, vmax, Filament )
for i=1:size(Filament,2)
vals=Filament(i).Results;
x=vals(:,3);
y=vals(:,4);
len=vals(:,7);
l_dist=fitdist(len,'Normal');
lavg(i)=l_dist.mu;
fpar(i)=Cdpar *(lavg(i)*10^-3)*vmax;
fperp(i)=Cdperp *(lavg(i)*10^-3)*vmax;
x_new=x-x(1);
y_new=53760-(y-y(1));
t= vals(:,2);
xdiff=x_new(end)-x_new(1);
ydiff=y_new(end)-y_new(1);
avg_ang(i)=atan2d(ydiff,xdiff);
if avg_ang(i)<0
avg_ang(i)=(360+avg_ang(i));
end
for j=1:size(x)-1
xdiff1=x(j+1)-x(j);
ydiff1=y(j+1)-y(j);
tdiff = t(j+1)-t(j);
vel(j)= sqrt((xdiff1)^2+(ydiff1)^2)/tdiff;
end
f=fitdist(vel','Normal');
avg_vel(i)=f.mu;
end
