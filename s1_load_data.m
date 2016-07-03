%use accelerometer meter from play store to collect data

%10 steps, pause, 10 steps, pause, squat
%name of the data file
myfile="Accelerometer Data 2016-06-30 22-22-06.txt";
%myfile="Accelerometer Data 2016-06-30 22-03-47.txt";

%number of hearderlines
h = 5;
b=dlmread(myfile,',',h,0);

%save the time and accel data into vectors
t=b(:,1);
x=b(:,2);
y=b(:,3);
z=b(:,4);
