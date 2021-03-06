function y = tempWXYT(x,datasize,mode,T,Th)

wo = 4;

nx = datasize(1);
ny = datasize(2);
nt = datasize(3);

x2 = reshape(x,[nx,ny,nt]);
y2 = zeros(size(x2));

W1 = MakeWaveletBasisfcn(nx,wo,6);
W2 = MakeWaveletBasisfcn(ny,wo,6);

W3 = dftmtx(nt)/sqrt(nt);
W3h = conj(dftmtx(nt))/sqrt(nt);

if mode == 1   %  Forward map
    y2 = double(ttensor(tensor(x2),{W1,W2,W3}));
elseif mode == 2  %  Adjoint
    y2 = double(ttensor(tensor(x2),{W1',W2',W3h}));
end
y = y2(:);
