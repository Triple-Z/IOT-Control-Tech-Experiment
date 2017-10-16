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
global gg wwn zz pp
gg = []; wwn = []; zz = [];pp = [];

calc(0, 0)
calc(0, 0.2)
calc(0.2, 0)
calc(0.2, 0.2)

% step(): Run System object algorithm
step(gg(1),'b-',gg(2),'c-',gg(3),'r-',gg(4),'y-')
legend('t=0, k=0', 't=0.2, k=0', 't=0, k=0.2', 't=0.2, k=0.2')

function calc(k, t)
%myFun - Description
%
% Syntax: calc(k, t)
% Void function.
% Calculate the transfer function, natural
% frequency, damping ratio and plots.
% Print all result every time
global gg wwn zz pp

    num_1 = [t 1]
    den_1 = 1
    num_2 = 10
    den_2 = conv([0.625 1], [1 0])    % conv(): Convolution and polynomial multiplication.
    num_3 = [k 0]
    den_3 = 1
    
    g1 = tf(num_1, den_1)
    g2 = tf(num_2, den_2)
    g3 = tf(num_3, den_3)

    g4 = feedback(g2, g3)
    g5 = series(g1, g4)
    g = feedback(g5, 1)

    [wn, z, p] = damp(g)

    gg = [gg, g]
    wwn = [wwn, wn]
    zz = [zz, z]
    pp = [pp, p]
end