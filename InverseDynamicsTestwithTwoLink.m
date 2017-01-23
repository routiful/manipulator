%%%% InverseDynamicsTestwithTwoLink
clc
clear all
close all

global uLINK;

TwoLinkData;

uLINK(1).dvo = [0 0 9.81]';

q   = [0.3 0.4]';
dq  = [0.1 0.2]';
ddq = [0.5 0.7]';

uLINK(2).q   = q(1);
uLINK(3).q   = q(2);
uLINK(2).dq  = dq(1);
uLINK(3).dq  = dq(2);
uLINK(2).ddq = ddq(1);
uLINK(3).ddq = ddq(2);

ForwardAllKinematics(1);

f_ext = [10 0 17 0 0 0]';
f_ext_mat =  [uLINK(4).R', zeros(3); zeros(3), uLINK(4).R'];
f_ext_in_local = f_ext_mat*f_ext;

uLINK(4).f_ext = f_ext_in_local;

InverseDynamics(1);

fprintf('inverse dynamics       : [%f %f]\n', uLINK(2).u, uLINK(3).u);

f_ext_ = [f_ext(1) f_ext(3)]';
t = TwoLinkInverseDynamics(1, 1, 1, 1, 0.5, 0.5, 1, 1, q, dq, ddq, f_ext_);

fprintf('analy inverse dynamics : [%f %f]\n', t(1), t(2));
