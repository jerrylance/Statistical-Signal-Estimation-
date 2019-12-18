function generate_finalproject_figures
% 6865 
% Zeyu Liu
% 12/16/2019

% sigmoid activation

X = linspace(-10,10,10000);
Y = 1 ./ (1 + exp(-X));
subplot(2,1,1),plot(X,Y,'LineWidth',1.5),title('stardand sigmoid activation'),legend('Y=1/(1+exp(-wX+b)), w=1,b=0','location','nw');grid minor;

X = linspace(-10,10,10000);
Y1 = 1 ./ (1 + exp(-X));
Y2 = 1 ./ (1 + exp(-2*X));
Y3 = 1 ./ (1 + exp(-3*X));
Y4 = 1 ./ (1 + exp(-X+1));
Y5 = 1 ./ (1 + exp(-X+2));

subplot(2,1,2),plot(X,Y1,X,Y2,X,Y3,X,Y4,X,Y5,'LineWidth',1.5),legend('w=1,b=0','w=2,b=0','w=3,b=0','w=1,b=1','w=1,b=2','location','nw');title('adjust sigmoid activation');grid minor;
pause;

% relu activation

X = linspace(-10,10,10000)
Y = max(0,X);
subplot(1,1,1),plot(X,Y,'LineWidth',1.5),title('relu activation');grid minor;

