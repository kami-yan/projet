 x_data = out.x.Data;
 y_data = out.y.Data;
 theta_data = out.theta.Data;
 delta1_data = out.delta1.Data;
 delta2_data = out.delta2.Data;

 n = size (x_data);
 for i = 1:n
     clf;
     visual( x_data(i),y_data(i),theta_data(i),delta1_data(i),delta2_data(i));
 end;
