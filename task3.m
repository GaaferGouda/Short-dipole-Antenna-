clc; clear;close all;
theta = linspace(0, pi, 360);
phi = linspace(0, 2*pi, 360);
E_theta = sin(theta);
H_phi = ones(size(phi));

% Plot E_theta (E-plane) in polar coordinates
%----------------------------------------------
figure (1);
polarplot([-theta, theta], [E_theta, E_theta], 'r', 'LineWidth', 1.5);
title("Plot E_theta (E-plane) in polar coordinates")
ax = gca;
ax.ThetaDir = 'clockwise';
ax.ThetaZeroLocation = 'top';


% Plot H_phi (H-plane) in polar coordinates
%-------------------------------------------
figure (2);
polarplot(phi, H_phi, 'r', 'LineWidth', 1.5);
title('H-plane Radiation Pattern (Polar Plot)');
ax = gca;
ax.ThetaDir = 'clockwise';
ax.ThetaZeroLocation = 'top';
rlim([0 1]);

% Plot E_theta (E-plane) in Cartesian coordinates
%-------------------------------------------------
figure (3);
x_E = E_theta .* cos(theta);
y_E = E_theta .* sin(theta);
x_EMirror = -E_theta .* cos(theta);
y_EMirror = -E_theta .* sin(theta);
plot(x_E, y_E,  'b' ,x_EMirror,y_EMirror, 'b' , 'LineWidth', 1.5);  % E_theta pattern
axis equal;
%-------labels--------------
xlabel('\theta');
xticks([-1.5 -1 -0.5 0 0.5 1 1.5]);
xticklabels({'-540', '-360', '-180', '0', '180', '360', '540'});  % Correct π labels
ylabel('E_\theta');
title('E-plane Radiation Pattern (Cartesian Plot)');
%-------limits&coorections--------------
xlim([-1.5, 1.5]);
ylim([-1.5, 1.5]);
view(90, -90);
grid on;

% Plot H_phi (H-plane) in Cartesian coordinates
figure (4);
x_H = H_phi .* cos(phi);
y_H = H_phi .* sin(phi);
plot(x_H , y_H, 'r', 'LineWidth', 1.5);
axis equal;
%-------labels--------------
xlabel('\phi (degrees)');
ylabel('H_\phi');
title('H-plane Radiation Pattern (Cartesian Plot)');
%-------limits&coorections--------------
xticks([-1.5 -1 -0.5 0 0.5 1 1.5]);
xticklabels({'-540', '-360', '-180', '0', '180', '360', '540'});
xlim([-1.5, 1.5]);
ylim([-1.5, 1.5]);
grid on;
