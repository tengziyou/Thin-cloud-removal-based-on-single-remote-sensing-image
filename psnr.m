function [PSNR1,PSNR2,PSNR3]=psnr(I,K)

% this function is to calculate PSNR;(please enter 2 grayscale matrices or 2 3-D matrices)
% determine array dimensions
di=size(I,3);
dk=size(K,3);
if di~=dk;
    error('wrong input');
end

% grayscale matrix
if (di==1)&&(dk==1);
    mi=size(I,1);
    ni=size(I,2);
    mk=size(K,1);
    nk=size(K,2);
    if (mi==mk)&&(ni==nk);
        M=double(mi);
        N=double(nk);
        differences=I-K;
        differences=double(differences);
        differencessquare=differences.^2;
        differencessquaresum=sum(sum(differencessquare));
        MSE=differencessquaresum/(M*N);
        PSNR1=10.*log10(255^2/MSE);
    else
        error('wrong input');
    end
end

%3-D matrix
if (di==3)&&(dk==3);
%     PSNR=zeros(1,3);
    mi=size(I,1);
    ni=size(I,2);
    mk=size(K,1);
    nk=size(K,2);
    if (mi==mk)&&(ni==nk);
        %operation on R channel
        I1=I(:,:,1);
        K1=K(:,:,1);
        M=double(mi);
        N=double(nk);
        differences1=I1-K1;
        differences1=double(differences1);
        differencessquare1=differences1.^2;
        differencessquaresum1=sum(sum(differencessquare1));
        MSE1=differencessquaresum1/(M*N);
        PSNR1=10.*log10(255^2/MSE1);
        %operation on G channel
        I2=I(:,:,2);
        K2=K(:,:,2);
        differences2=I2-K2;
        differences2=double(differences2);
        differencessquare2=differences2.^2;
        differencessquaresum2=sum(sum(differencessquare2));
        MSE2=differencessquaresum2/(M*N);
        PSNR2=10.*log10(255^2/MSE2);
        %operation on B channel
        I3=I(:,:,3);
        K3=K(:,:,3);
        differences3=I3-K3;
        differences3=double(differences3);
        differencessquare3=differences3.^2;
        differencessquaresum3=sum(sum(differencessquare3));
        MSE3=differencessquaresum3/(M*N);
        PSNR3=10.*log10(255^2/MSE3);
    else
        error('wrong input');
    end
end

%situations of others
if ((di~=1)||(dk~=1))&&((di~=3)||(dk~=3));
    error('please enter another matrices');
end





