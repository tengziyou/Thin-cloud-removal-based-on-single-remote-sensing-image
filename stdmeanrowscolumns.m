function [stdf,meanvalue]=stdmeanrowscolumns(I)

%this function is to calculate standard differences and mean values of matrices,and the matrix input can contain more than one row and column.
%the matrix input should be a grayscale matrix

%determine array dimensions
di=size(I,3);

%grayscale matrix
if (di==1)
    ri=size(I,1);
    ci=size(I,2);
    newrowcolumn=ri.*ci;
    newmatrix=reshape(I,newrowcolumn,1);
    stdf=std(newmatrix,1);
    meanvalue=mean(newmatrix);
end
%3-D matrix
% if (di==3)
%     Inew=rgb2gray(I);
%     Inew=double(Inew);
%     ri=size(Inew,1);
%     ci=size(Inew,2);
%     newrowcolumn=ri.*ci;
%     newmatrix=reshape(Inew,newrowcolumn,1);
%     stdf=std(newmatrix,1);
%     meanvalue=mean(newmatrix);
% end
% if (di~=1)&&(di~=3)
if (di~=1)
    error('please input another matrix');
end
    
    


