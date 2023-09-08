
%Ethan Storer
%Jesse Sestito ME 355
%Project 1
%I have neither given or received, nor have I tolarated others' use of
%unauthorized aid. Ethan Storer

%trajectory.m




function y = trajectory(x, y0, v0, theta0) 

y=((tand(theta0)).*x)-((9.81/((2.*(v0).^2)*(cosd(theta0).^2))).*(x.^2))+y0;

%y = (tan(theta0))*x-((9.81)/((2*v0^2)*((cos(theta0)^2)))*x^2)+y0;

end

