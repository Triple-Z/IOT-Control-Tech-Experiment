% Time-Domain analysis of first-order control 
% system based on MATLAB, for IOT control
% principles experiment.
% E1 is Experiment 1, k is the ONLY variable;
% E2 is Experiment 2, t is the ONLY variable.
% Date:         2017/10/14
% Author:       TripleZ
% Number:       161540121
% Copyright (c) 2017 TripleZ

clc;
clear;
% format short;
format RAT;                     % Format ratio of small integers.
% E1 raw data
% k = [2,5,15];
% t = 0.625;
% E2 raw data
k = 10;
t = [0.2, 0.5, 1];

gg = []; wwn = []; zz = [];pp = [];
% E1
% for i = 1: length(k)
% E2
for i = 1: length(t)
    % Print all result every time
    % E1
    % num = k(i)
    % E2
    num = k

    % E1
    % den = conv([t 1], [1 0])    % conv(): Convolution and polynomial multiplication.
    % E2
    den = conv([t(i) 1], [1 0])    % conv(): Convolution and polynomial multiplication.
    
    g0 = tf(num, den)           % tf(): Create transfer function model.
    g = feedback(g0, 1)         % feedback(): Feedback connection of two models.
    [wn, z, p] = damp(g)        % damp(): Natural frequency, damping ratio and the poles.
    gg = [gg, g]
    wwn = [wwn, wn]
    zz = [zz, z]
    pp = [pp, p]
end
% step(): Run System object algorithm
step(gg(1),'b-',gg(2),'g-',gg(3),'r-')

% E1
% legend('k=2', 'k=5', 'k=15')
% E2
legend('t=0.2', 't=0.5', 't=1')