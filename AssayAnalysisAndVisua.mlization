%Code to Plot theoretical plot of Force vs Velocity
Cdpar=(2*pi*(8.9*10^-4))/(log(200/25));
Cdperp=(4*pi*(8.9*10^-4))/(log(200/25));
Vel_100nm=[0.547029 1.09369 2.15484 4.37696 8.75026 17.5005 35.0011 69.9875
140.012] ;
for i=1:size(Vel_100nm,2)
l=1*10^-6;
v=Vel_100nm(i)*10^-6;
fpar(i)=Cdpar *l*v;
fperp(i) = Cdperp*l*v;
end
figure(1),scatter(Vel_100nm,fpar*10^12)
hold on
scatter(Vel_100nm,fperp*10^12)
title ('Force vs. Velocity-Theoretical 1 Micron')
xlabel ('Velocity(Micron/sec)')
ylabel('Force(N)')
legend('Parallel', 'Perpendicular')
%Code to plot the force vs length for a flow rate of 8000
Cdpar=(2*pi*(8.9*10^-4))/(log(200/25));
Cdperp=(4*pi*(8.9*10^-4))/(log(200/25));
vmax=35.0011;
for i=1:size(Filament,2)
vals=Filament(i).Results;
len=vals(:,7);
l_dist=fitdist(len,'Normal');
lavg(i)=l_dist.mu;
fpar(i)=Cdpar *(lavg(i)*10^-3*vmax);
fperp(i)=Cdperp *(lavg(i)*10^-3)*vmax;
end
figure
subplot(1,2,1)
scatter(lavg/1000, fpar)
xlabel ('Length (Microns)')
ylabel('Parallel Force(pN)')
subplot(1,2,2)
scatter(lavg/1000,fperp)
xlabel ('Length (Microns)')
ylabel('Perpendicular Force(pN)')
suptitle('Force vs Length for a Volume Flow Rate of 8000 nL/sec')


%Code to plot the force vs length for a flow rate of 16000
Cdpar=(2*pi*(8.9*10^-4))/(log(200/25));
Cdperp=(4*pi*(8.9*10^-4))/(log(200/25));
vmax16000=69.9875;
for i=1:size(Filament,2)
vals=Filament(i).Results;
len=vals(:,7);
l_dist=fitdist(len,'Normal');
lavg(i)=l_dist.mu;
fpar(i)=Cdpar *(lavg(i)*10^-3)*vmax16000;
fperp(i)=Cdperp *(lavg(i)*10^-3)*vmax16000;
end
subplot(1,2,1)
scatter(lavg/1000, fpar)
xlabel ('Length (Microns)')
ylabel('Parallel Force(pN)')
subplot(1,2,2)
scatter(lavg/1000,fperp)
xlabel ('Length (Microns)')
ylabel('Perpendicular Force(pN)')
suptitle('Force vs Length for a Volume Flow Rate of 16000 nL/sec')
%Code to plot the force vs length for a flow rate of 20000
Cdpar=(2*pi*(8.9*10^-4))/(log(200/25));
Cdperp=(4*pi*(8.9*10^-4))/(log(200/25));
v20000=87.4936;
for i=1:size(Filament,2)
vals=Filament(i).Results;
len=vals(:,7);
l_dist=fitdist(len,'Normal');
lavg(i)=l_dist.mu;
fpar(i)=Cdpar *(lavg(i)*10^-3)*v20000;
fperp(i)=Cdperp *(lavg(i)*10^-3)*v20000;
end
subplot(1,2,1)
scatter(lavg/1000, fpar)
xlabel ('Length (Microns)')
ylabel('Parallel Force(pN)')
subplot(1,2,2)
scatter(lavg/1000,fperp)
xlabel ('Length (Microns)')
ylabel('Perpendicular Force(pN)')
suptitle('Force vs Length for a Volume Flow Rate of 20000 nL/sec')


% Code to plot Angle vs Velocity and Force vs Velocity for Flow rate of
% 8,000
perp_start=1;
par_start=1;
Cdpar=(2*pi*(8.9*10^-4))/(log(200/25));
Cdperp=(4*pi*(8.9*10^-4))/(log(200/25));
v8000=35.0011;
[ fpar,fperp,avg_ang, avg_vel ] = Avg(Cdpar,Cdperp, v8000, Filament);
for k = 1:size(avg_ang,2)
if avg_ang(k) <= 45
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
elseif avg_ang(k)>45
if avg_ang(k) <= 135
par(par_start)=avg_ang(k);
par_avg_vel(par_start) = avg_vel(k);
par_force(par_start) = fpar(k);
par_start= par_start+1;
elseif avg_ang(k) > 135
if avg_ang(k) <=225
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
elseif avg_ang(k) >225
if avg_ang(k) <= 315
par(par_start)=avg_ang(k);
par_avg_vel(par_start) = avg_vel(k);
par_force(par_start) = fpar(k);
par_start= par_start+1;
elseif avg_ang(k) > 315
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
end
end
end
end
end
clear vel
figure
scatter(perp_force,perp_avg_vel)
xlabel ('Force(pN)')
ylabel('Velocity(microns/sec)')
hold on
scatter(par_force,par_avg_vel)
axis([0 6 0 1450])
legend('Perpendicular', 'Parallel')
figure
scatter(perp,perp_avg_vel)
xlabel ('Angle(Degree)')
ylabel('Velocity(microns/sec)')
hold on
scatter(par, par_avg_vel)

axis([0 400 0 1450])
legend('Perpendicular', 'Parallel')
% Code to plot Angle vs Velocity and Force vs Velocity for Flow rate of
% 16,000
perp_start=1;
par_start=1;
Cdpar=(2*pi*(8.9*10^-4))/(log(200/25)); %unit: pa *s
Cdperp=(4*pi*(8.9*10^-4))/(log(200/25));
vmax16000=69.9875;
[ fpar,fperp,avg_ang, avg_vel ] = Avg(Cdpar,Cdperp, vmax16000, Filament);
for k = 1:size(avg_ang,2)
if avg_ang(k) <= 45
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
elseif avg_ang(k)>45
if avg_ang(k) <= 135
par(par_start)=avg_ang(k);
par_avg_vel(par_start) = avg_vel(k);
par_force(par_start) = fpar(k);
par_start= par_start+1;
elseif avg_ang(k) > 135
if avg_ang(k) <=225
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
elseif avg_ang(k) >225
if avg_ang(k) <= 315
par(par_start)=avg_ang(k);
par_avg_vel(par_start) = avg_vel(k);
par_force(par_start) = fpar(k);
par_start= par_start+1;
elseif avg_ang(k) > 315
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
end
end
end
end
end
clear vel
figure
scatter(perp_force,perp_avg_vel)
xlabel ('Force(pN)')
ylabel('Velocity(microns/sec)')
hold on
scatter(par_force,par_avg_vel)
axis([0 12 0 1450])
legend('Perpendicular', 'Parallel')

figure
scatter(perp,perp_avg_vel)
xlabel ('Angle(Degree)')
ylabel('Velocity(microns/sec)')
hold on
scatter(par, par_avg_vel)
axis([0 400 0 950])
legend('Perpendicular', 'Parallel')
% Code to plot Angle vs Velocity and Force vs Velocity for Flow rate of
% 20,000
perp_start=1;
par_start=1;
Cdpar=(2*pi*(8.9*10^-4))/(log(200/25));
Cdperp=(4*pi*(8.9*10^-4))/(log(200/25));
v20000=87.4936;
[ fpar,fperp,avg_ang, avg_vel ] = Avg(Cdpar,Cdperp, v20000, Filament);
for k = 1:size(avg_ang,2)
if avg_ang(k) <= 45
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
elseif avg_ang(k)>45
if avg_ang(k) <= 135
par(par_start)=avg_ang(k);
par_avg_vel(par_start) = avg_vel(k);
par_force(par_start) = fpar(k);
par_start= par_start+1;
elseif avg_ang(k) > 135
if avg_ang(k) <=225
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
elseif avg_ang(k) >225
if avg_ang(k) <= 315
par(par_start)=avg_ang(k);
par_avg_vel(par_start) = avg_vel(k);
par_force(par_start) = fpar(k);
par_start= par_start+1;
elseif avg_ang(k) > 315
perp(perp_start)= avg_ang(k);
perp_avg_vel(perp_start) = avg_vel(k);
perp_force(perp_start) = fperp(k);
perp_start= perp_start+1;
end
end
end
end
end
clear vel
figure(1)
scatter(perp_force,perp_avg_vel)
xlabel ('Force(pN)')
ylabel('Velocity(microns/sec)')
hold on
scatter(par_force,par_avg_vel)
axis([0 12 0 1000])
legend('Perpendicular', 'Parallel')
figure(2)
scatter(perp,perp_avg_vel)
xlabel ('Angle(Degree)')
ylabel('Velocity(microns/sec)')
hold on
axis([0 350 0 1000])
scatter(par, par_avg_vel)
legend('Perpendicular', 'Parallel')


