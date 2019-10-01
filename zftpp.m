%直方图匹配
function I=zftpp(X,Y);
%X为待匹配（经过轮廓波变换后）图像，Y为标准（无云）图像，I为结果图

[m1,n1]=size(X);
[m2,n2]=size(Y);

%生成概率直方图数据
for i=0:255
    GPX(i+1)=length(find(X==i))/(m1*n1);
    GPY(i+1)=length(find(Y==i))/(m2*n2);
end

%分布函数直方图（归一化）
SX=zeros(1,256);
SY=zeros(1,256);
SX(1)=GPX(1);
SY(1)=GPY(1);
for i=2:256
    SX(i)=GPX(i)+SX(i-1);
    SY(i)=GPY(i)+SY(i-1);
end

%寻找X图中像素点对应的新灰度值
SX1=round((SX*255)+0.5);
SY1=round((SY*255)+0.5);
SZ=zeros(256,256);
for i=1:256
    for j=1:256
        SZ(j,i)=abs(SY1(j)-SX1(i));
    end
end  
[m,T]=min(SZ);

%生成的规定化直方图
% for i=1:256 
%     H(i)=sum(GPX(find(T==i)));   
% end

%应用直方图匹配的方法校正的新图像
I=X;
for i=0:255
    I(find(X==i))=T(i+1); 
end
