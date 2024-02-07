% calcul de distance

function D = distance(theta,x0,y0,xc,yc,r)
Do = abs(x0*tan(theta)-y0+(yc-xc*tan(theta)))/sqrt(1+tan(theta)*tan(theta));
dA = sqrt((xc-x0-a*cos(theta))^2+(yc-y0-a*sin(theta))^2);
dB = sqrt((xc-x0+a*cos(theta))^2+(yc-y0+a*sin(theta))^2);

D = min([Do,dA,dB])-r;

end


