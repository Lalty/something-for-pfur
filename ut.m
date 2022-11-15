y0 = [pi/4,0,pi/6,0];
[T,Y]= ode23t(@Acceleration,[0 2],y0);
t = [0:0.01:2]
Teta(1:size(t,1),1) = interp1(Tout,Yout(:,1),t);
Teta(1:size(t,1),2) = interp1(Tout,Yout(:,3),t);
%//////////////////////////Прямая задача кинемаики///////////
A1=[cos(tetta1) -sin(tetta1)*cos(a) sin(tetta1)*sin(a) a*cos(tetta1);
    sin(tetta1) cos(tetta1)*cos(a) -cos(tetta1)*sin(a) a*sin(tetta1);
    0 sin(a) cos(a) a;
    0 0 0 1]
A2=[cos(tetta2) -sin(tetta2)*cos(a2) sin(tetta2)*sin(a2) a2*cos(tetta2);
    sin(tetta2) cos(tetta2)*cos(a2) -cos(tetta2)*sin(a) a2*sin(tetta2);
    0 sin(a2) cos(a2) a2;
    0 0 0 1]
A(:,:,1)=A1;
A(:,:,2)=A2;
T = TPreobrazovanie(A);