% Show extinction of DA response (also behavior)
clearvars; clc; 
rng(2)

%% Initialization
% Task parameters
meanITI = 30;
maxITI = meanITI*3;
cuerewdelay = 1;
postrewdelay = 1;
n_cues = 100;

% Model parameters
samplingperiod = 0.2;
alpha = 0.02;
alpha_r = alpha*10;
w = 0.5;
k = 1;
Tratio = 1.2;
T = meanITI*Tratio;
minimumrate = 10^(-3);
threshold = 0.6;
maximumjitter = 0.1;
beta = [0; 1];

%% Simulation

% Simulate all cue and reward times
[eventlog] = simulateEvents(n_cues, 1, 2, 1, nan, ...
            meanITI, maxITI, cuerewdelay, 1, postrewdelay);
% Calculate model values
[DA,ANCCR,PRC,SRC,NC,Rs,Delta,Mij,Mi,Eij,Ei] = calculateANCCR_v3(eventlog, T, ...
    alpha, k, samplingperiod, w,threshold,minimumrate,beta, ...
    alpha_r, maximumjitter, nan, nan);

% Estimate value with and without inhibition
q_src = SRC.*Rs;

%% Save data
save("C:/Users/Victor/calmr/anccr_tests/simple_acquisition.mat")



