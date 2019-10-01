% Authorized by Teng Ziyou
% Please contact tengziyou@163.com if you have any advice or question
% Thank you for reading
% Now turns to wavelet transform

clear all
close all
clc


%read the picture
I=imread('E:\matlab2014\install\works\huzhongwei\wavelet\hu2.jpg');
figure;
imshow(I);
title('original image');
I=double(I);
Ir=I(:,:,1);
figure;imshow(uint8(Ir));title('Ir');
Ig=I(:,:,2);
figure;imshow(uint8(Ig));title('Ig');
Ib=I(:,:,3);
figure;imshow(uint8(Ib));title('Ib');

%conditions of decomposition
N=10;
wname='sym4';

%decomposition
[CR, SR]=wavedec2(Ir,N,wname);
[CG, SG]=wavedec2(Ig,N,wname);
[CB, SB]=wavedec2(Ib,N,wname);

%extract coefficients
%R channel
CRA=appcoef2(CR,SR,wname,N);
[CRH1,CRV1,CRD1]=detcoef2('all',CR,SR,1);
[CRH2,CRV2,CRD2]=detcoef2('all',CR,SR,2);
[CRH3,CRV3,CRD3]=detcoef2('all',CR,SR,3);
[CRH4,CRV4,CRD4]=detcoef2('all',CR,SR,4);
[CRH5,CRV5,CRD5]=detcoef2('all',CR,SR,5);
[CRH6,CRV6,CRD6]=detcoef2('all',CR,SR,6);
[CRH7,CRV7,CRD7]=detcoef2('all',CR,SR,7);
[CRH8,CRV8,CRD8]=detcoef2('all',CR,SR,8);
[CRH9,CRV9,CRD9]=detcoef2('all',CR,SR,9);
[CRH10,CRV10,CRD10]=detcoef2('all',CR,SR,10);

%G channel
CGA=appcoef2(CG,SG,wname,N);
[CGH1,CGV1,CGD1]=detcoef2('all',CG,SG,1);
[CGH2,CGV2,CGD2]=detcoef2('all',CG,SG,2);
[CGH3,CGV3,CGD3]=detcoef2('all',CG,SG,3);
[CGH4,CGV4,CGD4]=detcoef2('all',CG,SG,4);
[CGH5,CGV5,CGD5]=detcoef2('all',CG,SG,5);
[CGH6,CGV6,CGD6]=detcoef2('all',CG,SG,6);
[CGH7,CGV7,CGD7]=detcoef2('all',CG,SG,7);
[CGH8,CGV8,CGD8]=detcoef2('all',CG,SG,8);
[CGH9,CGV9,CGD9]=detcoef2('all',CG,SG,9);
[CGH10,CGV10,CGD10]=detcoef2('all',CG,SG,10);

%G channel
CBA=appcoef2(CB,SB,wname,N);
[CBH1,CBV1,CBD1]=detcoef2('all',CB,SB,1);
[CBH2,CBV2,CBD2]=detcoef2('all',CB,SB,2);
[CBH3,CBV3,CBD3]=detcoef2('all',CB,SB,3);
[CBH4,CBV4,CBD4]=detcoef2('all',CB,SB,4);
[CBH5,CBV5,CBD5]=detcoef2('all',CB,SB,5);
[CBH6,CBV6,CBD6]=detcoef2('all',CB,SB,6);
[CBH7,CBV7,CBD7]=detcoef2('all',CB,SB,7);
[CBH8,CBV8,CBD8]=detcoef2('all',CB,SB,8);
[CBH9,CBV9,CBD9]=detcoef2('all',CB,SB,9);
[CBH10,CBV10,CBD10]=detcoef2('all',CB,SB,10);

%adjust coefficients
NH=7; NL=0.0;N0=1;
CRH1=CRH1.*NH;  CBH1=CBH1.*NH;  CGH1=CGH1.*NH;
CRV1=CRV1.*NH;  CBV1=CBV1.*NH;  CGV1=CGV1.*NH;
CRD1=CRD1.*NH;  CBD1=CBD1.*NH;  CGD1=CGD1.*NH;

CRH2=CRH2.*NH;  CBH2=CBH2.*NH;  CGH2=CGH2.*NH;
CRV2=CRV2.*NH;  CBV2=CBV2.*NH;  CGH2=CGH2.*NH;
CRD2=CRD2.*NH;  CBD2=CBD2.*NH;  CGD2=CGD2.*NH;

CRH3=CRH3.*NH;  CBH3=CBH3.*NH;  CGH3=CGH3.*NH;
CRV3=CRV3.*NH;  CBV3=CBV3.*NH;  CGV3=CGV3.*NH;
CRD3=CRD3.*NH;  CBD3=CBD3.*NH;  CGD3=CGD3.*NH;

CRH4=CRH4.*NH;  CBH4=CBH4.*NH;  CGH4=CGH4.*NH;
CRV4=CRV4.*NH;  CBV4=CBV4.*NH;  CGV4=CGV4.*NH;
CRD4=CRD4.*NH;  CBD4=CBD4.*NH;  CGD4=CGD4.*NH;

% CRH4=CRH4.*NL;  CBH4=CBH4.*NL;  CGH4=CGH4.*NL;
% CRV4=CRV4.*NL;  CBV4=CBV4.*NL;  CGV4=CGV4.*NL;
% CRD4=CRD4.*NL;  CBD4=CBD4.*NL;  CGD4=CGD4.*NL;

CRH5=CRH5.*NH;  CBH5=CBH5.*NH;  CGH5=CGH5.*NH;
CRV5=CRV5.*NH;  CBV5=CBV5.*NH;  CGV5=CGV5.*NH;
CRD5=CRD5.*NH;  CBD5=CBD5.*NH;  CGD5=CGD5.*NH;

% CRH5=CRH5.*NL;  CBH5=CBH5.*NL;  CGH5=CGH5.*NL;
% CRV5=CRV5.*NL;  CBV5=CBV5.*NL;  CGV5=CGV5.*NL;
% CRD5=CRD5.*NL;  CBD5=CBD5.*NL;  CGD5=CGD5.*NL;

% CRH6=CRH6.*NH;  CBH6=CBH6.*NH;  CGH6=CGH6.*NH;
% CRV6=CRV6.*NH;  CBV6=CBV6.*NH;  CGV6=CGV6.*NH;
% CRD6=CRD6.*NH;  CBD6=CBD6.*NH;  CGD6=CGD6.*NH;

CRH6=CRH6.*NL;  CBH6=CBH6.*NL;  CGH6=CGH6.*NL;
CRV6=CRV6.*NL;  CBV6=CBV6.*NL;  CGV6=CGV6.*NL;
CRD6=CRD6.*NL;  CBD6=CBD6.*NL;  CGD6=CGD6.*NL;
% 
% CRH7=CRH7.*NH;  CBH7=CBH7.*NH;  CGH7=CGH7.*NH;
% CRV7=CRV7.*NH;  CBV7=CBV7.*NH;  CGV7=CGV7.*NH;
% CRD7=CRD7.*NH;  CBD7=CBD7.*NH;  CGD7=CGD7.*NH;

CRH7=CRH7.*NL;  CBH7=CBH7.*NL;  CGH7=CGH7.*NL;
CRV7=CRV7.*NL;  CBV7=CBV7.*NL;  CGV7=CGV7.*NL;
CRD7=CRD7.*NL;  CBD7=CBD7.*NL;  CGD7=CGD7.*NL;

% CRH8=CRH8.*NH;  CBH8=CBH8.*NH;  CGH8=CGH8.*NH;
% CRV8=CRV8.*NH;  CBV8=CBV8.*NH;  CGV8=CGV8.*NH;
% CRD8=CRD8.*NH;  CBD8=CBD8.*NH;  CGD8=CGD8.*NH;

CRH8=CRH8.*NL;  CBH8=CBH8.*NL;  CGH8=CGH8.*NL;
CRV8=CRV8.*NL;  CBV8=CBV8.*NL;  CGV8=CGV8.*NL;
CRD8=CRD8.*NL;  CBD8=CBD8.*NL;  CGD8=CGD8.*NL;

% CRH9=CRH9.*NH;  CBH9=CBH9.*NH;  CGH9=CGH9.*NH;
% CRV9=CRV9.*NH;  CBV9=CBV9.*NH;  CGV9=CGV9.*NH;
% CRD9=CRD9.*NH;  CBD9=CBD9.*NH;  CGD9=CGD9.*NH;

CRH9=CRH9.*NL;  CBH9=CBH9.*NL;  CGH9=CGH9.*NL;
CRV9=CRV9.*NL;  CBV9=CBV9.*NL;  CGV9=CGV9.*NL;
CRD9=CRD9.*NL;  CBD9=CBD9.*NL;  CGD9=CGD9.*NL;

CRH10=CRH10.*NL;  CBH10=CBH10.*NL;  CGH10=CGH10.*NL;
CRV10=CRV10.*NL;  CBV10=CBV10.*NL;  CGV10=CGV10.*NL;
CRD10=CRD10.*NL;  CBD10=CBD10.*NL;  CGD10=CGD10.*NL;

CRA=CRA.*N0;	CGA=CGA.*N0;    CBA=CBA.*N0;   

%preparation for reconstruction
CRH1=reshape(CRH1,1,size(CRH1,1).*size(CRH1,2));  CGH1=reshape(CGH1,1,size(CGH1,1).*size(CGH1,2));  CBH1=reshape(CBH1,1,size(CBH1,1).*size(CBH1,2));
CRH2=reshape(CRH2,1,size(CRH2,1).*size(CRH2,2));  CGH2=reshape(CGH2,1,size(CGH2,1).*size(CGH2,2));  CBH2=reshape(CBH2,1,size(CBH2,1).*size(CBH2,2));
CRH3=reshape(CRH3,1,size(CRH3,1).*size(CRH3,2));  CGH3=reshape(CGH3,1,size(CGH3,1).*size(CGH3,2));  CBH3=reshape(CBH3,1,size(CBH3,1).*size(CBH3,2));
CRH4=reshape(CRH4,1,size(CRH4,1).*size(CRH4,2));  CGH4=reshape(CGH4,1,size(CGH4,1).*size(CGH4,2));  CBH4=reshape(CBH4,1,size(CBH4,1).*size(CBH4,2));
CRH5=reshape(CRH5,1,size(CRH5,1).*size(CRH5,2));  CGH5=reshape(CGH5,1,size(CGH5,1).*size(CGH5,2));  CBH5=reshape(CBH5,1,size(CBH5,1).*size(CBH5,2));
CRH6=reshape(CRH6,1,size(CRH6,1).*size(CRH6,2));  CGH6=reshape(CGH6,1,size(CGH6,1).*size(CGH6,2));  CBH6=reshape(CBH6,1,size(CBH6,1).*size(CBH6,2));
CRH7=reshape(CRH7,1,size(CRH7,1).*size(CRH7,2));  CGH7=reshape(CGH7,1,size(CGH7,1).*size(CGH7,2));  CBH7=reshape(CBH7,1,size(CBH7,1).*size(CBH7,2));
CRH8=reshape(CRH8,1,size(CRH8,1).*size(CRH8,2));  CGH8=reshape(CGH8,1,size(CGH8,1).*size(CGH8,2));  CBH8=reshape(CBH8,1,size(CBH8,1).*size(CBH8,2));
CRH9=reshape(CRH9,1,size(CRH9,1).*size(CRH9,2));  CGH9=reshape(CGH9,1,size(CGH9,1).*size(CGH9,2));  CBH9=reshape(CBH9,1,size(CBH9,1).*size(CBH9,2));
CRH10=reshape(CRH10,1,size(CRH10,1).*size(CRH10,2));  CGH10=reshape(CGH10,1,size(CGH10,1).*size(CGH10,2));  CBH10=reshape(CBH10,1,size(CBH10,1).*size(CBH10,2));
CRA=reshape(CRA,1,size(CRA,1).*size(CRA,2));    CGA=reshape(CGA,1,size(CGA,1).*size(CGA,2));    CBA=reshape(CBA,1,size(CBA,1).*size(CBA,2));

CRV1=reshape(CRV1,1,size(CRV1,1).*size(CRV1,2));  CGV1=reshape(CGV1,1,size(CGV1,1).*size(CGV1,2));  CBV1=reshape(CBV1,1,size(CBV1,1).*size(CBV1,2));
CRV2=reshape(CRV2,1,size(CRV2,1).*size(CRV2,2));  CGV2=reshape(CGV2,1,size(CGV2,1).*size(CGV2,2));  CBV2=reshape(CBV2,1,size(CBV2,1).*size(CBV2,2));
CRV3=reshape(CRV3,1,size(CRV3,1).*size(CRV3,2));  CGV3=reshape(CGV3,1,size(CGV3,1).*size(CGV3,2));  CBV3=reshape(CBV3,1,size(CBV3,1).*size(CBV3,2));
CRV4=reshape(CRV4,1,size(CRV4,1).*size(CRV4,2));  CGV4=reshape(CGV4,1,size(CGV4,1).*size(CGV4,2));  CBV4=reshape(CBV4,1,size(CBV4,1).*size(CBV4,2));
CRV5=reshape(CRV5,1,size(CRV5,1).*size(CRV5,2));  CGV5=reshape(CGV5,1,size(CGV5,1).*size(CGV5,2));  CBV5=reshape(CBV5,1,size(CBV5,1).*size(CBV5,2));
CRV6=reshape(CRV6,1,size(CRV6,1).*size(CRV6,2));  CGV6=reshape(CGV6,1,size(CGV6,1).*size(CGV6,2));  CBV6=reshape(CBV6,1,size(CBV6,1).*size(CBV6,2));
CRV7=reshape(CRV7,1,size(CRV7,1).*size(CRV7,2));  CGV7=reshape(CGV7,1,size(CGV7,1).*size(CGV7,2));  CBV7=reshape(CBV7,1,size(CBV7,1).*size(CBV7,2));
CRV8=reshape(CRV8,1,size(CRV8,1).*size(CRV8,2));  CGV8=reshape(CGV8,1,size(CGV8,1).*size(CGV8,2));  CBV8=reshape(CBV8,1,size(CBV8,1).*size(CBV8,2));
CRV9=reshape(CRV9,1,size(CRV9,1).*size(CRV9,2));  CGV9=reshape(CGV9,1,size(CGV9,1).*size(CGV9,2));  CBV9=reshape(CBV9,1,size(CBV9,1).*size(CBV9,2));
CRV10=reshape(CRV10,1,size(CRV10,1).*size(CRV10,2));  CGV10=reshape(CGV10,1,size(CGV10,1).*size(CGV10,2));  CBV10=reshape(CBV10,1,size(CBV10,1).*size(CBV10,2));

CRD1=reshape(CRD1,1,size(CRD1,1).*size(CRD1,2));  CGD1=reshape(CGD1,1,size(CGD1,1).*size(CGD1,2));  CBD1=reshape(CBD1,1,size(CBD1,1).*size(CBD1,2));
CRD2=reshape(CRD2,1,size(CRD2,1).*size(CRD2,2));  CGD2=reshape(CGD2,1,size(CGD2,1).*size(CGD2,2));  CBD2=reshape(CBD2,1,size(CBD2,1).*size(CBD2,2));
CRD3=reshape(CRD3,1,size(CRD3,1).*size(CRD3,2));  CGD3=reshape(CGD3,1,size(CGD3,1).*size(CGD3,2));  CBD3=reshape(CBD3,1,size(CBD3,1).*size(CBD3,2));
CRD4=reshape(CRD4,1,size(CRD4,1).*size(CRD4,2));  CGD4=reshape(CGD4,1,size(CGD4,1).*size(CGD4,2));  CBD4=reshape(CBD4,1,size(CBD4,1).*size(CBD4,2));
CRD5=reshape(CRD5,1,size(CRD5,1).*size(CRD5,2));  CGD5=reshape(CGD5,1,size(CGD5,1).*size(CGD5,2));  CBD5=reshape(CBD5,1,size(CBD5,1).*size(CBD5,2));
CRD6=reshape(CRD6,1,size(CRD6,1).*size(CRD6,2));  CGD6=reshape(CGD6,1,size(CGD6,1).*size(CGD6,2));  CBD6=reshape(CBD6,1,size(CBD6,1).*size(CBD6,2));
CRD7=reshape(CRD7,1,size(CRD7,1).*size(CRD7,2));  CGD7=reshape(CGD7,1,size(CGD7,1).*size(CGD7,2));  CBD7=reshape(CBD7,1,size(CBD7,1).*size(CBD7,2));
CRD8=reshape(CRD8,1,size(CRD8,1).*size(CRD8,2));  CGD8=reshape(CGD8,1,size(CGD8,1).*size(CGD8,2));  CBD8=reshape(CBD8,1,size(CBD8,1).*size(CBD8,2));
CRD9=reshape(CRD9,1,size(CRD9,1).*size(CRD9,2));  CGD9=reshape(CGD9,1,size(CGD9,1).*size(CGD9,2));  CBD9=reshape(CBD9,1,size(CBD9,1).*size(CBD9,2));
CRD10=reshape(CRD10,1,size(CRD10,1).*size(CRD10,2));  CGD10=reshape(CGD10,1,size(CGD10,1).*size(CGD10,2));  CBD10=reshape(CBD10,1,size(CBD10,1).*size(CBD10,2));

CRN=[CRA,CRH10,CRV10,CRD10,CRH9,CRV9,CRD9,CRH8,CRV8,CRD8,CRH7,CRV7,CRD7,CRH6,CRV6,CRD6,CRH5,CRV5,CRD5,CRH4,CRV4,CRD4,CRH3,CRV3,CRD3,CRH2,CRV2,CRD2,CRH1,CRV1,CRD1];
CGN=[CGA,CGH10,CGV10,CGD10,CGH9,CGV9,CGD9,CGH8,CGV8,CGD8,CGH7,CGV7,CGD7,CGH6,CGV6,CGD6,CGH5,CGV5,CGD5,CGH4,CGV4,CGD4,CGH3,CGV3,CGD3,CGH2,CGV2,CGD2,CGH1,CGV1,CGD1];
CBN=[CBA,CBH10,CBV10,CBD10,CBH9,CBV9,CBD9,CBH8,CBV8,CBD8,CBH7,CBV7,CBD7,CBH6,CBV6,CBD6,CBH5,CBV5,CBD5,CBH4,CBV4,CBD4,CBH3,CBV3,CBD3,CBH2,CBV2,CBD2,CBH1,CBV1,CBD1];

%reconstruction
% Ire=imread('E:\matlab2014\install\works\E2017323\E2017323second\wavelet\R2017323second.png');
% Irer=Ire(:,:,1);
% Ireg=Ire(:,:,2);
% Ireb=Ire(:,:,3);

Irn=waverec2(CRN,SR,wname);
IRN=uint8(Irn);
% IRNH=zftpp(IRN,Irer);
% figure;imshow(IRNH);title('IRNH')

Ign=waverec2(CGN,SR,wname);
IGN=uint8(Ign);
% IGNH=zftpp(IGN,Ireg);
% figure;imshow(IGNH);title('IGNH')

Ibn=waverec2(CBN,SR,wname);
IBN=uint8(Ibn);
% IBNH=zftpp(IBN,Ireb);
% figure;imshow(IBNH);title('IBNH')

In=cat(3,IRN,IGN,IBN);
figure;imshow(In);title('In')
% 
% INH=cat(3,IRNH,IGNH,IBNH);
% figure;imshow(uint8(INH),[]);title('INH')

imwrite(In,'hu2,only NH=3,HL=0.0,N0=1,m=5.png')
% imwrite(INH,'sym4,NH=1.8,HL=0.1,N0=0.7,m=5.png');

% I=uint8(I);
% [PSNR1,PSNR2,PSNR3]=psnr(I,INH);

%% calculate standard differnces and meanvalues
% I=double(I);
% I0=INH;
% I0=double(I0);
% I1=double(IRNH);
% I2=double(IGNH);
% I3=double(IBNH);
% imager=double(Ir);
% imageg=double(Ig);
% imageb=double(Ib);
% 
% % [stdfI,meanvalueI]=stdmeanrowscolumns(I);
% [stdfI1,meanvalueI1]=stdmeanrowscolumns(I1)
% [stdfI2,meanvalueI2]=stdmeanrowscolumns(I2)
% [stdfI3,meanvalueI3]=stdmeanrowscolumns(I3)
% 
% %% calculate SSIM
% SSIM1=ssim_index(imager,I1)
% SSIM2=ssim_index(imageg,I2)
% SSIM3=ssim_index(imageb,I3)
% 
% %% calculate entropy
% % entropyI=imentropy(I)
% entropyI1=imentropy(I1)
% entropyI2=imentropy(I2)
% entropyI3=imentropy(I3)
% 
% Iwhole=mean(mean(rgb2gray(INH)))