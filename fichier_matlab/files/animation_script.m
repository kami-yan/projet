close all; clear all;

% Define the path to your Simulink model
modelPath = 'projet.slx';

% Load the model into memory (optional, sim will load it if not loaded)
load_system(modelPath);

% Simulate the model
out = sim(modelPath, 'SimulationMode', 'normal');

xp_data = out.xp.Data;
 yp_data = out.yp.Data;
 theta_data = out.theta.Data;
 delta1_data = out.delta1.Data;
 delta2_data = out.delta2.Data;

 n = size (xp_data);
 for i = 1:n
     visual( xp_data(i),yp_data(i),theta_data(i),delta1_data(i),delta2_data(i));
 end;