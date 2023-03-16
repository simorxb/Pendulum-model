// Define the scheme as the path to the Xcos diagram file for the pendulum model
scheme = "Pendulum model\Pendulum model.zcos";

// Import the Xcos diagram from the given path
importXcosDiagram(scheme);

// Run the Xcos simulation with the imported diagram (scs_m)
xcos_simulate(scs_m, 4);

// Create a subplot for the torque (Tau) plot
subplot(212);
// Plot the torque (Tau) values against time with blue solid lines and a linewidth of 3
h = plot(u_out.time, u_out.values, 'b-', 'LineWidth',3);
// Get the current axes
ax=gca();
// Set grid lines for the current axes
set(gca(),"grid",[1 1]);
// Set the x-axis label with a custom font style and size
xlabel('t[s]', 'font_style', 'times bold', 'font_size', 3);
// Set the y-axis label with a custom font style and size
ylabel('Tau [Nm]', 'font_style', 'times bold', 'font_size', 3);

// Create a subplot for the angle (Theta) plot
subplot(211);
// Plot the angle (Theta) values against time with blue solid lines and a linewidth of 3
h = plot(y_out.time, y_out.values, 'b-', 'LineWidth',3);
// Get the current axes
ax=gca();
// Set the data bounds for the current axes (x-axis: 0 to 20, y-axis: 0 to 70)
ax.data_bounds=[0 0;20 70];
// Set grid lines for the current axes
set(gca(),"grid",[1 1]);
// Set the x-axis label with a custom font style and size
xlabel('t[s]', 'font_style', 'times bold', 'font_size', 3);
// Set the y-axis label with a custom font style and size
ylabel('Theta [Deg]', 'font_style', 'times bold', 'font_size', 3);
