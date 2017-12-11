
% figure(4);
% A = zeros(10);
% A(3:7,3:7) = ones(5);
% mesh(A)
% 
% figure(2);
% H = [1 2 1; 0 0 0; -1 -2 -1];
% Y = filter2(H,A,'valid');
% mesh(Y)
% 
% figure(3);
% C = conv2(A,H);
% mesh(C)


figure(1);
A = zeros(5);
A(2:4,2:4) = ones(3)
mesh(A)

figure(2);
H = [0 0 0 ;1 1 1 ; 0 0 0];
Y = filter2(H,A,'same')
mesh(Y)
