function homework12ch11_2
% 6865 
% Zeyu Liu
% 12/3/2019
% [plot for x=2 and x=1.1]
% For the posterior PDF for e1 = 1/2 and e2 = 3/4
e1 = 1/2;
e2 = 3/4;
theta = linspace(-10,10,10000);

x1 = 2;
p1 = e1/sqrt(2*pi)*exp(-1/2*(theta-x1).^2) + (1-e1)/sqrt(2*pi)*exp(-1/2*(theta+x1).^2);
p2 = e2/sqrt(2*pi)*exp(-1/2*(theta-x1).^2) + (1-e2)/sqrt(2*pi)*exp(-1/2*(theta+x1).^2);
subplot(2,1,1),plot(theta,p1),title('e = 1/2, x = 2');grid minor;
subplot(2,1,2),plot(theta,p2),title('e = 3/4, x = 2');grid minor;
pause;

x2 = 1.1;
p1 = e1/sqrt(2*pi)*exp(-1/2*(theta-x2).^2) + (1-e1)/sqrt(2*pi)*exp(-1/2*(theta+x2).^2);
p2 = e2/sqrt(2*pi)*exp(-1/2*(theta-x2).^2) + (1-e2)/sqrt(2*pi)*exp(-1/2*(theta+x2).^2);
subplot(2,1,1),plot(theta,p1),title('e = 1/2, x = 1.1');grid minor;
subplot(2,1,2),plot(theta,p2),title('e = 3/4, x = 1.1');grid minor;
