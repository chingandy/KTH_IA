% Q1 
% tools = few256;
% 
% deltay = [0 0 0; -0.5 0 0.5 ; 0 0 0];  %-------------simple difference operator
% deltax = [0 -0.5 0 ; 0 0 0 ; 0 0.5 0 ];
% 
% dxtools = conv2(tools, deltax, 'valid');
% dytools = conv2(tools, deltay, 'valid');
% 
% subplot(2,1,1); 
% showgrey(dxtools);
% title('vertical derivative');
% subplot(2,1,2);
% showgrey(dytools);
% title('horizontal derivative');



%Q2
% tools = few256;
% deltax = [0 0 0; -0.5 0 0.5 ; 0 0 0];   %-------------simple difference operator
% deltay = [0 0.5 0 ; 0 0 0 ; 0 -0.5 0 ];
% 
% dxtoolsconv = conv2(tools, deltax, 'valid');
% dytoolsconv= conv2(tools, deltay, 'valid');
% 
% gradmagntools = sqrt(dxtoolsconv.^2 + dytoolsconv.^2);
% figure(1);
% showgrey(gradmagntools);
% figure(2);
% histogram(gradmagntools(:),1000);

% threshold = 10;
% showgrey((gradmagntools-threshold)>0);
% 
% threshold = 15;
% showgrey((gradmagntools-threshold)>0);
% 
% threshold = 20;
% showgrey((gradmagntools-threshold)>0);
% 
% threshold = 25;
% showgrey((gradmagntools-threshold)>0);

%----------------------------------------------------------

% pic = godthem256;
% figure(1);
% showgrey(pic);
% title('Original');
% 
% gradmagpic = sqrt(Lv(pic));
% figure(2);
% showgrey(gradmagpic);
% figure(3);
% hist(gradmagpic(:));
% 
% 
% t = 1 ; 
% gpic = discgaussfft(pic, t); % smooth the image using a Gaussian filter
% gradmaggpic = sqrt(Lv(gpic));
% showgrey(gradmaggpic);
% hist(gradmaggpic(:));
% threshold = 10;
% showgrey((gradmaggpic-threshold)>0);

% Q4
scale = [0.0001 1.0 4.0 16.0 64.0];
house = godthem256;
contour(Lvvtilde(discgaussfft(house,scale(1)), 'same'), [0 0])
axis('image')
axis('ij')



