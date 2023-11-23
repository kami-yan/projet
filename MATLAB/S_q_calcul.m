function S_q_elt = S_q_calcul(delta1,delta2,theta,a,R,element)
S_q = [2*cos(delta1)*cos(delta2)*cos(theta)-sin(delta1+delta2)*sin(theta) 0 0;
       sin(delta1+delta2)*cos(theta)+2*cos(delta1)*cos(delta2)*sin(theta) 0 0;
       sin(delta1-delta2)/a 0 0;
       0 1 0;
       0 0 1;
       2*cos(delta2)/R 0 0;
       2*cos(delta1)/R 0 0];

S_q_elt=S_q(element,1);
end

