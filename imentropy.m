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
        Img_level=I(i,j)+1;                 %��ȡͼ��ĻҶȼ�           
        nk(Img_level)=nk(Img_level)+1;      %ͳ��ÿ���Ҷȼ����صĵ���
    end
end
Ps=zeros(L,1);
for k=1:L
    Ps(k)=nk(k)/Img_size;                  %����ÿһ���Ҷȼ����ص���ռ�ĸ���
    if Ps(k)~=0;                           %ȥ������Ϊ0�����ص�
    H_img=-Ps(k)*log2(Ps(k))+H_img;        %����ֵ�Ĺ�ʽ
    end
end
entropy=H_img;
%entropy(I)