
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


% figure(1);
% A = zeros(5);
% A(2:4,2:4) = ones(3)
% mesh(A)
% 
% figure(2);
% H = [0 0 0 ;1 1 1 ; 0 0 0];
% Y = filter2(H,A,'same')
% mesh(Y)

% x1 = linspace(1,10,10);
% y1 = x1 + 2 ;
% 
% x2 = linspace(5, 10 , 10);
% y2 = x2 *2 -1 ;
% 
% plot(x1,y1,x2,y2);
% grid on;
%--------------------------------------------------------------------------
% The following test shows how contour() and the matrix output from
% contours() work

% mt = [1 1 1 1 1 ; 1 2 2 2 1 ; 1 2 3 2 1 ; 1 2 2 2 1 ; 1 1 1 1 1];
% contour(mt ,3); % 3 denotes the number of level in the contour plot is three
% contours(mt, 3);
% contours(mt , [1 1]); % All the points constitute the first level
% contours(mt , [2 2 ]);
% contours(mt, [3 3 ]);

%--------------------------------------------------------------------------

t = triangle128;
showgrey(t)
c = zerocrosscurves(t-128);
overlaycurves(t,c);
showgrey(printcurves(t,c,-128));





