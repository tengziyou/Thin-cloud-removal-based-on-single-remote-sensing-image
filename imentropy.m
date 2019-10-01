function [entropy]=imentropy(I)
%this function is to calculate the entropy of a matrix;
%the matrix input should be a grayscale matrix;

[R,C]=size(I);      
Img_size=R*C;       
L=256;              
H_img=0;
nk=zeros(L,1);
for i=1:R
    for j=1:C
        Img_level=I(i,j)+1;                 %获取图像的灰度级           
        nk(Img_level)=nk(Img_level)+1;      %统计每个灰度级像素的点数
    end
end
Ps=zeros(L,1);
for k=1:L
    Ps(k)=nk(k)/Img_size;                  %计算每一个灰度级像素点所占的概率
    if Ps(k)~=0;                           %去掉概率为0的像素点
    H_img=-Ps(k)*log2(Ps(k))+H_img;        %求熵值的公式
    end
end
entropy=H_img;
%entropy(I)