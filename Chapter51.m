% Time-Domain analysis of second-order control 
% system based on MATLAB, for IOT control
% principles experiment.
% Date:         2017/10/14
% Author:       TripleZ
% Number:       161540121
% Copyright (c) 2017 TripleZ

clc;
clear;
format RAT;                     % Format ratio of small integers.

gg = []; wwn = []; zz = [];pp = [];

k = t = 0;
[g, wn, z, p] = calc(k, t);
gg = [gg, g]
wwn = [wwn, wn]
zz = [zz, z]
pp = [pp, p]



% step(): Run System object algorithm
step(gg(1),'-',gg(2),'--',gg(3),'-')
legend('t=0, k=0', 't=0.2, k=0', 't=0, k=0.2', 't=0.2, k=0.2')

function [g, wn, z, p] = calc(k, t)
%myFun - Description
%
% Syntax: [g, wn, z, p] = calc(k, t)
%
% Calculate the transfer function, natural
% frequency, damping ratio and plots.
% Print all result every time
    num = k
    den = conv([t 1], [1 0])    % conv(): Convolution and polynomial multiplication.
    g0 = tf(num, den)           % tf(): Create transfer function model.
    g = feedback(g0, 1)         % feedback(): Feedback connection of two models.
    [wn, z, p] = damp(g)        % damp(): Natural frequency, damping ratio and the poles.
end