%main file to call the scripts needed to load and process acceleroemter data.
%ME 
%07/01/2016

disp("Hello World");
clear all;
close all;
clc;


%use accelerometer meter from play store to collect data
%load the data into workspace
s1_load_data

%plot the data to better undestand it 
s2_plot_data

%Calculate the signal magnitude
s3_filter_data

%Estimate step count
s4_guesstimate_steps