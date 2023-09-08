%Ethan Storer
%Jesse Sestito ME 355
%Project 1
%I have neither given or received, nor have I tolarated others' use of
%unauthorized aid. Ethan Storer

%Specify launch angle theta to hit target at xtarget, ytarget
%inputs: xtarget, ytarget, v0, 

%Outputs: plot projectile path, show starting point and that it hits target
%location
%Calculate ytarget value from inputs v0, xtarget, and theta (computed).
clc
clear
close 

y0=16;
v0=50;
x_target=250;
y_target=10;
actual_target = y_target;
number_of_significant_figures = 200;

%Calculate theta
theta0 = launchangle(x_target, y_target, y0, v0, number_of_significant_figures);

%trajectory.m with inputs and theta to get y_target
 y_target = trajectory(x_target, y0, v0, theta0) 


%Plot projectile path
x_axis = 0:(x_target*1.02);


for n = x_axis
     y_axis = trajectory(x_axis, y0, v0, theta0); 
end


%plot 
hold on
plot(x_axis,y_axis)
xlim([0 x_target.*1.05])
ylim([0 max(y_axis).*1.05])
xlabel('Launch Distance (feet)')
ylabel('Height (feet)')
plot(x_target, actual_target,'r*')
legend('Estimated Trajectory','Specified Target')
title('V&V Visualization')
m = msgbox(["V&V Calculation:"; "y_target from initial velocity and x_target (feet): ";y_target;"Computed theta0 (degrees):";theta0]);

hold off














