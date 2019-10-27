function homework8ch7_24
% 6865 
% Zeyu Liu
% Plot the periodogram for N=10 for the frequencies f0=0.25 and f0=0.05.
% Use the noiseless data x[n]=cos(2*pi*f0*n), n=0,1,...,N-1

% 1. f0=0.25

N = 10;
f1 = 0.25;

n = 0:N-1;
x = cos(2*pi*f1*n);

% periodogram
% I = (1/N)*(abs(sum(x.*exp((-i)*2*pi*f1*n))).^2);
[pxx,f] = periodogram(x);
plot(f/(2*pi),pxx*2*pi,'LineWidth',1)
hold on;

% Exact MLE
Fs = 400; % sampling frequency 
N1 = [0:N-1];
xlab = zeros(1,Fs);
ylab = zeros(1,Fs);
a = 1;
for fs = 0:1/Fs:0.5
    xlab(1,a) = fs;
    c = cos(2*pi*fs*N1);
    s = sin(2*pi*fs*N1);
    H = [c; s];
    y1 = x*H'*(H*H')^(-1)*H*x';
    ylab(1,a) = y1;
    a = a + 1;
end;

plot(xlab(1:201),ylab(1:201),'LineWidth',1,'Color',[1 0 0]);

grid on
grid minor
title('Periodogram vs exact MLE (freq=0.25)');
xlabel('frequency');
ylabel('Obfective funtion');
legend('Periodogram','Exact MLE');
pause;

hold off;

% 2. f0=0.05
N = 10;
f2 =0.05;

n = 0:(N-1);
x1 = cos(2*pi*f2*n);

% periodogram
[pxx,f] = periodogram(x1);
plot(f/(2*pi),pxx*2*pi,'LineWidth',1)
hold on;

% Exact MLE
Fs = 400;
N1 = [0:N-1];
xlab = zeros(1,Fs);
ylab = zeros(1,Fs);
a = 1;

for fs = 0:1/Fs:0.5
    xlab(1,a) = fs;
    c1 = cos(2*pi*fs*N1);
    s1 = sin(2*pi*fs*N1);
    H1 = [c1; s1];
    y2 = x1*H1'*(H1*H1')^(-1)*H1*x1';
    ylab(1,a) = y2;
    a = a + 1;
end;

plot(xlab(1:201),ylab(1:201),'LineWidth',1,'Color',[1 0 0]);

grid on
grid minor
title('Periodogram vs exact MLE (freq=0.05)');
xlabel('frequency');
ylabel('Obfective funtion');
legend('Exact MLE','Periodogram');
pause;
hold off;

