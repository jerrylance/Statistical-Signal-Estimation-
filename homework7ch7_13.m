function homework7ch7_13
% 6865 
% Zeyu Liu
% Verify that the PDF of the MLE or sample mean is N(A,sigma^2/N)
% Plot the theoretical and computer-generated PDFs for comparison.
% 1.  A=1,sigma^2=0.1,N=50,M=1000

s = rng(2);% set a seed to control the result

x = 1 + sqrt(0.1/50).*randn(1,1000);
h = histogram(x,'Normalization','pdf','FaceColor',[1 1 1]); % pdf
xlabel('x');
ylabel('Probability Density');
hold on;
% use the middle mean of every bar to fit.
z = h.Values;
m = h.BinEdges + 0.5*h.BinWidth;
m = m(1:(length(m)-1));
plot(m,z,'LineWidth',1,'Color',[0 0 1]);
hold on;
% use the x to fit a computer-generated PDF figure.
pd = fitdist(x','normal');
xgrid = linspace(0.8,1.2,100)';
pdfEst = pdf(pd,xgrid);
line(xgrid,pdfEst,'LineWidth',1,'Color',[0 1 0]);
hold on;
% theoretical asymptotic PDF.
x1 = 0.8:0.001:1.2;
mu = 1;
sigma = sqrt(0.1/50);
f = exp(-(x1-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(x1,f,'LineWidth',1,'Color',[1 0 0])
pause;
stats = [mean(x) var(x)];
stats
title('M=1000,mean=0.9978, var=0.0020');
pause;
hold off;
% 2.  A=1,sigma^2=0.1,N=50,M=5000


s = rng(2); % use the seed before to control the result

x2 = 1 + sqrt(0.1/50).*randn(1,5000);
h2 = histogram(x2,'Normalization','pdf','FaceColor',[1 1 1]);
xlabel('x');
ylabel('Probability Density');
hold on;
% use the middle mean of every bar to fit.
z2 = h2.Values;
m2 = h2.BinEdges + 0.5*h2.BinWidth;
m2 = m2(1:(length(m2)-1));
plot(m2,z2,'LineWidth',1,'Color', [0 0 1]);
hold on;
% use the x to fit a computer-generated PDF figure.
pd2 = fitdist(x2','normal');
xgrid2 = linspace(0.8,1.2,100)';
pdfEst2 = pdf(pd2,xgrid2);
line(xgrid2,pdfEst2,'LineWidth',1,'Color',[0 1 0]);
hold on;
% theoretical asymptotic PDF.
x3 = 0.8:0.001:1.2;
mu = 1;
sigma = sqrt(0.1/50);
f = exp(-(x3-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(x3,f,'LineWidth',1,'Color',[1 0 0])
pause;
stats2 = [mean(x2) var(x2)];
stats2
title('M=5000,mean=0.9992, var=0.0020');
pause;
hold off;
%stats = [mean(h2),var(h2)];
%stats;
%pause;
