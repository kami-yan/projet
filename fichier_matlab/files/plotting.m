close all; clear all;

% Define the path to your Simulink model
modelPath = 'projet.slx';

% Load the model into memory (optional, sim will load it if not loaded)
load_system(modelPath);

% Simulate the model
out = sim(modelPath, 'SimulationMode', 'normal');


% If the data is in timeseries format, you need to extract the data like this:
 x_data = out.xp.Data;
 y_data = out.yp.Data;

% If the data is in timeseries format, you need to extract the data like this:
 rx_data = out.rx.Data;
 ry_data = out.ry.Data;

% If the data is in timeseries format, you need to extract the data like this:
 ex_data = out.ex.Data;
 ey_data = out.ey.Data;


% If the data is in timeseries format, you need to extract the data like this:
 ex_relative_data = out.ex_robot.Data;
 ey_relative_data = out.ey_robot.Data;


% Plot the XY data
figure;
plot(rx_data, ry_data);
xlabel('X');
ylabel('Y');
title('target points');
grid on;

% Plot the XY data
figure;
plot(x_data, y_data);
xlabel('X');
ylabel('Y');
title('la trajectoire de p du robot ');
grid on;

% Plot the XY data
figure;
plot(rx_data, ry_data);
xlabel('X');
ylabel('Y');
title('target points');
grid on;

% Plot the XY data
hold on;
plot(x_data, y_data);
xlabel('X');
ylabel('Y');
title('la trajectoire de p du robot ');
grid on;

legend('trajectoire desirée','trajectoire du robot')

% Plot the error data
figure;
plot(out.tout, ey_data);
xlabel('X');
ylabel('Y');
title("l'erreur selon y dans le repere du laboratoire");
grid on;

% Plot the error data
hold on;
plot(out.tout, ex_data);
xlabel('X');
ylabel('Y');
title("l'erreur dans le repere du laboratoire");
grid on;

legend("l'erreur absolue selon x","l'erreur absolue selon y")


% Plot the error data
figure;
plot(out.tout, ey_relative_data);
xlabel('X');
ylabel('Y');
title("l'erreur selon x dans le repere du robot");
grid on;

% Plot the error data
hold on;
plot(out.tout, ex_relative_data);
xlabel('X');
ylabel('Y');
title("l'erreur dans le repere du robot");
grid on;

legend("l'erreur selon x","l'erreur selon y")