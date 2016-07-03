%Find the max change in the acceleration, regardless of the phone orientation
mag = sqrt(sum(x.^2 + y.^2 + z.^2, 2));

%plot the magnitude response
figure;
plot(t, mag);
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');

%Detrend the data
%Remove mean and get rid of G
%QQQ
magNoG = mag - mean(mag);
figure;
plot(t, magNoG);
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');

