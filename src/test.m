dt = 0.01;            
tf = 7;             
g = 9.8;              
global t_fail;
global t_detect;
global counter;
t_fail = 3;
t_detect = 0.2;     
counter = 0;
t = 1:dt:tf;
m = 23.56;           
n = length(t);
state = zeros(12,1);
global flag 
flag = true;
tic;
for k = 1:(n-1)
    [thrust, phi_cmd, the_cmd, psi_cmd] = compute_guidance(state,t(k),k);
end
toc;