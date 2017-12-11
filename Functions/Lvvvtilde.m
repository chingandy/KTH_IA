function Lvvv = Lvvvtilde(inpic, shape)
if(nargin < 2)
    shape = 'same';
end


Lx = filter2(dxmask, inpic, shape);
Ly = filter2(dymask, inpic, shape);
Lxx = filter2(dxxmask, inpic, shape);
Lyy = filter2(dyymask, inpic, shape);
Lxy = filter2(dxymask, inpic, shape);
Lxxx = filter2(dxxxmask, inpic, shape);
Lyyy = filter2(dyyymask, inpic, shape);
Lxxy = filter2(dxxymask, inpic, shape);
Lxyy = filter2(dxyymask, inpic, shape);

Lvvv = (Lx.^3).*Lxxx + 3*(Lx.^2).*Ly.*Lxxy + 3*Lx.*(Ly.^2).*Lxyy + (Ly.^3).*Lyyy;
end


% function pixels = Lv(inpic, shape)
% if(nargin < 2)
%     shape = 'same';
% end
% 
% Lx = filter2(dxmask, inpic, shape);
% Ly = filter2(dymask, inpic, shape);
% pixels = Lx.^2 + Ly.^2;