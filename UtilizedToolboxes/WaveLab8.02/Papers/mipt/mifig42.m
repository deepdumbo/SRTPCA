% mifig42 -- Noiseless Data Transforms (MIPT coefficients)
%
% Panel (a): Sinusoid
% Panel (b): Heaviside
% Panel (c): Doppler
%

scriptname = 'mifig42';

Len = 3^9; % length of sampled signal

domain = linspace(0,1,Len);

L = 3; D = 2; % parameter for FMIPT

sine = 4.*sin((1:Len) / (3^3 * 40)); % Sinusoid
s = 300*3^3;
heav = 4 .* [zeros(1,s) ones(1,Len-s)]; % Heaviside
doppler = 10*MakeSignal('Doppler',Len); % Doppler

subplot(2,3,1)
plot(domain,sine)
xlabel('t')
title('Sinusoid')
subplot(2,3,4)

wc = FMIPT(sine,L,D);
PlotMRA_MT(wc,L,'Level',D);
title('(a) MIPT of Sinusoid,D=2')

subplot(2,3,2)
plot(domain,heav)
xlabel('t')
title('Heaviside')
axis([0,1,-1,5])
subplot(2,3,5)
wc = FMIPT(heav,L,D);
PlotMRA_MT(wc,L,1/8,D)
title('(b) MIPT of Heaviside, D=2')

subplot(2,3,3)
plot(domain,doppler)
xlabel('t')
title('Doppler')
subplot(2,3,6)
wc = FMIPT(doppler,L,D);
PlotMRA_MT(wc,L,1/8,D)
title('(c) MIPT of Doppler, D=2')

pack

RegisterPlot(scriptname, '{R}')

%
% Copyright (c) 1996.  David Donoho and Thomas P.Y. Yu
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
