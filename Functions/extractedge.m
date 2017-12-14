function edgecurves = extractedge(inpic, scale, threshold, shape)

if (nargin < 4) 
    shape = 'same';
end

lv = Lv(inpic, shape);
lvv = Lvvtilde(discgaussfft(inpic, scale), shape);
lvvv = Lvvvtilde(discgaussfft(inpic, scale), shape);

lvmask = (lv > threshold) - 0.5;
lvvvmask = (lvvv < 0) - 0.5;

% sort zerocrossings with negative Lvvv and Lv above threshold
edgecurves = zerocrosscurves(lvv, lvvvmask);
edgecurves = thresholdcurves(edgecurves, lvmask);
overlaycurves(inpic, edgecurves);

end