function root = falseposition(f, xl, xu, tolerance) 
%Ethan Storer
%Jesse Sestito ME 355
%Project 1
%falseposition.m
%I have neither given or received, nor have I tolarated others' use of
%unauthorized aid. Ethan Storer


% inputs: x, y0, v0, theta0        
% x=0;
% y0=0;
% v0=69;


% f = @(theta0) %Call trajectory as anonymous function
% (tan(theta0))*x-((9.81)/((2*v0^2)*(cos(theta0)^2)))*x^2+y0;

%Check bounds
if (f(xu))*(f(xl)) < 0 %good
    disp('Root within bounds.')
else
    g = msgbox("Error, no root found within bounds.");
    error('Error, no root found within bounds.')
end

Ea = tolerance+1; %Ea is relative error

n =1;
while Ea>tolerance

xr = xu - f(xu)*((xu-xl)/(f(xu)-f(xl))); %get xr
%xrp=xr;

if f(xr)*f(xu)<0
    xl=xr;

else
    xu=xr;

end

if n>1
   
    Ea = (xr - xrp)/xr;

  
end
n=n+1;
xrp=xr;
end
root = xr;




end










