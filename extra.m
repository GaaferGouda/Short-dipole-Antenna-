[theta, phi] = meshgrid(linspace(0, pi, 100), linspace(0, 2*pi, 100));
E_theta = sin(theta);
x = E_theta .* sin(theta) .* cos(phi);
y = E_theta .* sin(theta) .* sin(phi);
z = E_theta .* cos(theta);
figure('Position', [100, 100, 800, 600]);
plot(1);
mask = y >= 0;
x_masked = x;
y_masked = y;
z_masked = z;
x_masked(~mask) = NaN;
y_masked(~mask) = NaN;
z_masked(~mask) = NaN;

surf(x_masked, y_masked, z_masked);
hold on;

patch([0 1.5 1.5 0], [0 0 0 0], [-1.5 -1.5 1.5 1.5], 'FaceColor', [0.8 0.8 0.8], 'FaceAlpha', 0.3, 'EdgeColor', 'k');

theta_line = linspace(0, pi, 100);
x_line = sin(theta_line) .* sin(theta_line);
z_line = sin(theta_line) .* cos(theta_line);
plot3(x_line, zeros(size(x_line)), z_line, 'r', 'LineWidth', 2);

shading interp
colormap('winter')
lighting gouraud
material([0.6 0.8 0.1])
camlight('headlight')

xlabel('x')
ylabel('y')
zlabel('z')

axis equal
axis([-1.5 1.5 0 1.5 -1.5 1.5])
grid on
view(45, 30)

title('3D Radiation Pattern with Cutaway')
