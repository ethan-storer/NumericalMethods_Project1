function theta0 = launchangle(x_target, y_target, y0, v0, number_of_significant_figures) 
% calculate launch angle to hit xtarg, ytarg
%input sig figs
% yo
% vo
%call false position.m and trajectory.m
%call trajectory.m to use in false position

% inputs for falseposition
xl=0; %degrees
xu=45; %degrees
tolerance = (0.5*10^(2-number_of_significant_figures))/100;


f = @(theta0) trajectory(x_target, y0, v0, theta0)-y_target; %Call trajectory as anonymous function

theta0 = falseposition(f, xl, xu, tolerance);

end

