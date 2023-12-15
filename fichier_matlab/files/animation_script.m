 x_data = out.x.Data;
 y_data = out.y.Data;
 theta_data = out.theta.Data;
 delta1_data = out.delta1.Data;
 delta2_data = out.delta2.Data;
 rx_data = out.rx.Data;
 ry_data = out.ry.Data;

 n = size (x_data);
 for i = 1:n
     clf;
     plot(rx_data, ry_data'LineWidth', 2, 'Color', 'red');
     hold on;
     plot(x_data(1:i-1),y_data(1:i-1),'LineWidth', 1, 'Color', 'gre');
     hold on;
     xlabel('X');
     ylabel('Y');
     title('target points');
     visual( x_data(i),y_data(i),theta_data(i),delta1_data(i),delta2_data(i));
 end;
