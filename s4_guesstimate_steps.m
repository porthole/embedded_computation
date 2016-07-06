%Estimate the number of steps
%Each peak in mag corresponds to a step
%So, count the number of peaks

%set peak heguht threshold to std
minPeakHeightth = std(magNoG);

%how many steps per sec?
%seperate peaks by x samples to avoid multiple detections per step
%Q?
peakd = floor(fs/4)

[pks, locs]=findpeaks(magNoG, "MinPeakHeight", minPeakHeightth,"MinPeakDistance",peakd,"DoubleSided");

%drop the negative peaks
locs=locs(pks>0);
pks=pks(pks>0);

numSteps = numel(pks)

figure;
plot(t, magNoG);
hold on
plot(t, ones(length(t),1)*minPeakHeightth,'r--')
plot(t, ones(length(t),1)*-minPeakHeightth,'r--')
%plot the steps
plot(t(locs), pks,'o');
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');
legend('magNoG','Threshold')
title(['Guesstimated Step Size: ',num2str(numSteps)])