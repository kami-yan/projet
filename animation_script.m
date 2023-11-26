 x_data = out.x.Data;
 y_data = out.y.Data;
 theta_data = out.theta.Data;
 delta1_data = out.delta1.Data;
 delta2_data = out.delta2.Data;

 n = size (x_data);
 for i = 1:n
     visual( x_data,y_data,theta_data,delta1_data,delta2_data);
 end;