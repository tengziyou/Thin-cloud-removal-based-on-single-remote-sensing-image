%ֱ��ͼƥ��
function I=zftpp(X,Y);
%XΪ��ƥ�䣨�����������任��ͼ��YΪ��׼�����ƣ�ͼ��IΪ���ͼ

[m1,n1]=size(X);
[m2,n2]=size(Y);

%���ɸ���ֱ��ͼ����
for i=0:255
    GPX(i+1)=length(find(X==i))/(m1*n1);
    GPY(i+1)=length(find(Y==i))/(m2*n2);
end

%�ֲ�����ֱ��ͼ����һ����
SX=zeros(1,256);
SY=zeros(1,256);
SX(1)=GPX(1);
SY(1)=GPY(1);
for i=2:256
    SX(i)=GPX(i)+SX(i-1);
    SY(i)=GPY(i)+SY(i-1);
end

%Ѱ��Xͼ�����ص��Ӧ���»Ҷ�ֵ
SX1=round((SX*255)+0.5);
SY1=round((SY*255)+0.5);
SZ=zeros(256,256);
for i=1:256
    for j=1:256
        SZ(j,i)=abs(SY1(j)-SX1(i));
    end
end  
[m,T]=min(SZ);

%���ɵĹ涨��ֱ��ͼ
% for i=1:256 
%     H(i)=sum(GPX(find(T==i)));   
% end

%Ӧ��ֱ��ͼƥ��ķ���У������ͼ��
I=X;
for i=0:255
    I(find(X==i))=T(i+1); 
end
