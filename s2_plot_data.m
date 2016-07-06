%plot the data to better undestand it 

%plot 3 axis accel data
figure;
plot(t, x);
hold on
plot(t, y,'r');
plot(t, z,'g');
legend('X', 'Y', 'Z');
xlabel('Relative time (s)');
ylabel('Acceleration (m/s^2)');
grid on

%let's get some info about the data:
%what is the sampling time?
%Q
%dt=diff(t); 
%fs = 1/mean(dt)