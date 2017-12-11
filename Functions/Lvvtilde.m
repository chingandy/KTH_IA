function Lvv = Lvvtilde(inpic, shape)
if(nargin < 2)
    shape = 'same';
end


Lx = filter2(dxmask, inpic, shape);
Ly = filter2(dymask, inpic, shape);
Lxx = filter2(dxxmask, inpic, shape);
Lyy = filter2(dyymask, inpic, shape);
Lxy = filter2(dxymask, inpic, shape);

Lvv = (Lx.^2).*Lxx + 2*Lx.*Ly.*Lxy+(Ly.^2).*Lyy;
end


% function pixels = Lv(inpic, shape)
% if(nargin < 2)
%     shape = 'same';
% end
% 
% Lx = filter2(dxmask, inpic, shape);
% Ly = filter2(dymask, inpic, shape);
% pixels = Lx.^2 + Ly.^2;