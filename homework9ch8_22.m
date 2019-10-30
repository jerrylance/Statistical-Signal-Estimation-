function homework9ch8_22
% 6865 
% Zeyu Liu
% 10/28/2019
% By implementing a Monte Carlo computer simulation plot A[N] hat as given
% by (8.40). The data x[n]=A+w[n], w[n]is zero mean WGN delta(n)^2 = r^n
% Use A =10, and r=1, 0.95, 1.05. Initialize the estimator by using 
% A[0] hat = x[0] and var(A[0] hat)= var(x[0])= delta(0)^2=1.
% Plot the gain and variance sequences.


% Well, the author make a mistake of variance function in his figures'
% solution. r^n should be sqrt(r^n) in next formula. But I use two here.

A = 10;

% because matlab figure is begin at(1,1)
% 1. r = 1

% Data Sequence
s = rng(5);% set a seed to control the result
w = randn(1,100);
for n=1:100,
    x(n) = A + 1^n.*w(n);
    %x(n) = A + sqrt(1^n).*w(n);
end;
plot(x);

% Estimate Ahat[n]

Ahat(1) = A + w(1);
for N = 1:99
    x(N+1) = A + 1^(N+1).*w(N+1);
    %x(N+1) = A + sqrt(1^(N+1)).*w(N+1);
    Ahat(N+1) = Ahat(N) + 1/(N+2)*(x(N+1)-Ahat(N));
end;
plot(Ahat);

% Variance Sequence
for N = 1:100,
    VAhat(N) = 1/N;
end;
plot(VAhat);

% Gain Sequence
for N = 1:100,
    K(N) = 1/(N+1);
end;
plot(K);


subplot(221),plot(x),title('Data Sequence');
grid on;
subplot(222),plot(Ahat),title('Estimate Ahat[n]');
grid on;
subplot(223),plot(VAhat),title('Variance Sequence');
grid on;
subplot(224),plot(K),title('Gain Sequence');
grid on;
suptitle('r = 1');

pause;

% 2. r = 0.95

% Data Sequence
s = rng(5);% set a seed to control the result
w = randn(1,100);
for n=1:100
    x(n) = A + 0.95^n.*w(n);
    %x(n) = A + sqrt(0.95^n).*w(n);
end;
plot(x);

% Estimate Ahat[n]

Ahat(1) = A + w(1);
for N = 1:99
    x(N+1) = A + 0.95^(N+1).*w(N+1);
    %x(N+1) = A + sqrt(0.95^(N+1)).*w(N+1);
    Ahat(N+1) = Ahat(N) + 1/(N+2)*(x(N+1)-Ahat(N));
end;
plot(Ahat);

% Variance Sequence
for N = 1:100,
    VAhat(N) = 1/N;
end;
plot(VAhat);

% Gain Sequence
for N = 1:100,
    K(N) = 1/(N+1);
end;
plot(K);


subplot(221),plot(x),title('Data Sequence');
grid on;
subplot(222),plot(Ahat),title('Estimate Ahat[n]');
grid on;
subplot(223),plot(VAhat),title('Variance Sequence');
grid on;
subplot(224),plot(K),title('Gain Sequence');
grid on;
suptitle('r = 0.95');
pause;
% 3. r = 1.05

% Data Sequence
s = rng(5);% set a seed to control the result
w = randn(1,100);
for n=1:100
    x(n) = A + 1.05^n.*w(n);
    %x(n) = A + sqrt(1.05^n).*w(n);
end;
plot(x);

% Estimate Ahat[n]

Ahat(1) = A + w(1);
for N = 1:99
    x(N+1) = A + 1.05^(N+1).*w(N+1);
    %x(N+1) = A + sqrt(1.05^(N+1)).*w(N+1);
    Ahat(N+1) = Ahat(N) + 1/(N+2)*(x(N+1)-Ahat(N));
end;
plot(Ahat);

% Variance Sequence
for N = 1:100,
    VAhat(N) = 1/N;
end;
plot(VAhat);

% Gain Sequence
for N = 1:100,
    K(N) = 1/(N+1);
end;
plot(K);



subplot(221),plot(x),title('Data Sequence');
grid on;
subplot(222),plot(Ahat),title('Estimate Ahat[n]');
grid on;
subplot(223),plot(VAhat),title('Variance Sequence');
grid on;
subplot(224),plot(K),title('Gain Sequence');
grid on;
suptitle('r = 1.05');

pause;


