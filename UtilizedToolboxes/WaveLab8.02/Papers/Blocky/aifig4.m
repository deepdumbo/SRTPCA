% aifig4 -- The Dual Functions
%
% These functions are dual to the wavelets of the previous
% figure, in that integration of a function f against these
% functions gives the coefficients in the wavelet expansion
% using the corresponding AI wavelets.
%
global Fil2 Fil4 Fil6 Fil8
global EdgeFil2 EdgeFil4 EdgeFil6 EdgeFil8
%
clf;  nref = 5;
v = zeros(4,32);
kronecker = zeros(1,32);
kronecker(18) = 1;
% Order D=2
D = 2;
a = 2.* kronecker;
for k=(-D/2):(D/2),
  a(17+2*k) = a(17+2*k) - Fil2(1 + D + 2*k);
  a(18+2*k) = a(18+2*k) - Fil2(1 + D + 2*k);
end
% D, a 
v(1,:) = a;  
for j=1:nref, 
  a = [a ; a]; 
  a = reshape(a,1,prod(size(a)));
end;
t = 16*(0:(length(a)-1)) ./ length(a) -8;  
inx = (t >= -5) & (t < 5);
subplot(221);
plot(t(inx),a(inx)) ; 
title('4(a) Dual AI Wavelet D=2')

D = 4;
a = 2 .* kronecker;
for k=(-D/2):(D/2),
  a(17+2*k) = a(17+2*k) - Fil4(1 + D + 2*k);
  a(18+2*k) = a(18+2*k) - Fil4(1 + D + 2*k);
end
% D, a 
v(2,:) = a;       
for j=1:nref, 
  a = [a ; a]; 
  a = reshape(a,1,prod(size(a)));
end;
subplot(222);
plot(t(inx),a(inx)) ; 
title('4(b) Dual, D=4')

D = 6;
a = 2 .* kronecker;
for k=(-D/2):(D/2),
  a(17+2*k) = a(17+2*k) - Fil6(1 + D + 2*k);
  a(18+2*k) = a(18+2*k) - Fil6(1 + D + 2*k);
end
% D, a
v(3,:) = a;        
for j=1:nref, 
  a = [a ; a]; 
  a = reshape(a,1,prod(size(a)));
end;
subplot(223);
plot(t(inx),a(inx)) ; 
title('4(c) Dual, D=6')

D = 8;
a = 2.* kronecker;
for k=(-D/2):(D/2),
  a(17+2*k) = a(17+2*k) - Fil8(1 + D + 2*k);
  a(18+2*k) = a(18+2*k) - Fil8(1 + D + 2*k);
end
%D, a
v(4,:) = a;       
for j=1:nref, 
  a = [a ; a]; 
  a = reshape(a,1,prod(size(a)));
end;
t = 16*(0:(length(a)-1)) ./ length(a) -8;
subplot(224);
plot(t(inx),a(inx)) ; 
title('4(d) Dual, D=8')
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
