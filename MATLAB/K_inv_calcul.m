function K_inv_elt = K_inv_calcul(theta,delta1,delta2,a,e,ligne,col)

K_inv = [ cos(delta1 + theta)/(2*sin(delta1 + theta)^2*cos(delta2) + 2*cos(delta2)*cos(delta1 + theta)^2)  sin(delta1 +theta)/(2*sin(delta1 + theta)^2*cos(delta2)+2*cos(delta2)*cos(delta1+theta)^2) ;
          (-a*cos(delta2)*sin(delta1+theta)-e*sin(delta1-delta2)*cos(delta1+theta))/(a*e*sin(delta1 + theta)^2*cos(delta2) + a*e*cos(delta2)*cos(delta1+theta)^2) (a*cos(delta2)*cos(delta1+theta)-e*sin(delta1-delta2)*sin(delta1+theta))/(a*e*sin(delta1 + theta)^2*cos(delta2) + a*e*cos(delta2)*cos(delta1+theta)^2)];

K_inv_elt = K_inv(ligne,col);

end
