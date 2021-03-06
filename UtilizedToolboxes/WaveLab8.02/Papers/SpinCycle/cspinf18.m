% cspinf18 -- Translation-Invariant Table of Blocks
%
% Here we display translation-invariant Wavelet Transform.  
% Object blocks
% S8 Wavelet 
%
%  Remark: run CycleSpinInit and cspinf0[12] before this.
%
%  Agenda:  %
global yblocks ybumps yheavi yDoppler
global t
%
global tiwtblocks
global xblocks xbumps xheavi xDoppler
%MRD 3-9-99
%

		HaarQMF = MakeONFilter('Haar');
%
%
		L = 5;
		[tiwtblocks]  = FWT_TI(xblocks,  L,HaarQMF);
%
		figure;
		PlotPacketTable(tiwtblocks)
		title('18. TI Table; Haar Wavelet, Blocks Object')
		ylabel('splitting depth, d')
		xlabel('box[location], k[t]')
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
