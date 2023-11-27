function h = visual(x,y,theta,s1,s2)
L = 10;
l=9;
W= 4;
pose=[x;y];


centres_obs = [4, 10; 3, 2; 9,12;5,16;15,15;15,2;7,6;13,8]; 
rayon_obs = [0.5, 0.4,1,0.2,1,0.7,0.8,0.6]; 

viscircles(centres_obs, rayon_obs, 'Color', 'red'); 
hold on; 
robot_chassis = [pose(1)+cos(theta)*L/2 ,pose(2)+sin(theta)*L/2 ; pose(1)-cos(theta)*L/2 , pose(2)-sin(theta)*L/2 ];
roue_chassis = [pose(1)+cos(theta)*l/2 ,pose(2)+sin(theta)*l/2 ; pose(1)-cos(theta)*l/2 , pose(2)-sin(theta)*l/2 ];

plot(robot_chassis(:, 1), robot_chassis(:, 2), 'LineWidth', 2, 'Color', 'blue')

hold on ;


robot_chassis(1,1);
roue1 = [roue_chassis(1,1) , roue_chassis(1,2) ];
R1 = [roue1(1)-cos(theta + s1)*W/2 ,roue1(2)-sin(theta +s1)*W/2 ; roue1(1)+cos(theta + s1)*W/2 , roue1(2)+sin(theta + s1)*W/2 ];

roue2 = [roue_chassis(2,1),roue_chassis(2,2)];
R2 = [roue2(1)-cos(theta + s2)*W/2 ,roue2(2)-sin(theta + s2)*W/2 ; roue2(1)+cos(theta +s2)*W/2 , roue2(2)+sin(theta +s2)*W/2 ];
plot(R1(:, 1), R1(:, 2), 'LineWidth', 1, 'Color', 'gre');

hold on ;

plot(R2(:, 1), R2(:, 2), 'LineWidth', 1, 'Color', 'gre');
hold on ;
rectangle('Position', [-10, -10, 30, 30], 'EdgeColor', 'black'); 
axis equal; 
xlabel('X-axis');
ylabel('Y-axis');
pause(0.01);


end
