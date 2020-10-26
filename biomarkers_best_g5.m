% get dimensions of data
[nx,ny,nz]=size(data);
% input the number of biomarkers
nb=22;
%initialize a matrix for the image plane biomarkers
b=zeros(nx,ny,nb);
% initiallize a matrix for the kmeans biomarker columns
X=zeros(nx*ny,nb);

% fat to protein
% old biomarker 43, new #1
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1744;       % peak1 - band ratio numerator
x4=1548;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,1)=b1;

% fat to phosphate sligthly adjusted from new #2
% old biomarker 37, new #2
x1=840;        % baseline 1 low
x2=1774;       % baseline 1 high
x3=1744;       % peak1 - band ratio numerator
x4=1244;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline 1 low
i2=2001-x2/2;  % index of baseline 1 high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,2)=b1;

% lipid to phosphate
% old biomarker 64, new #3
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1742;       % peak1 - band ratio numerator
x4=1256;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,3)=b1;

% sugar to protein
% old biomarker 53, new #4
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1160;       % peak1 - band ratio numerator
x4=1548;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,4)=b1;

% amide II to phosphate
% old biomarker b28, new #5
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1516;       % peak1 - band ratio numerator
x4=1236;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,5)=b1;

% lipid to amide II
% old biomarker 54, new #6
x1=840;        % baseline low
x2=4000;       % baseline high
x3=2916;       % peak1 - band ratio numerator
x4=1548;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,6)=b1;

% ? to ooze
% old biomarker 45, new #7
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1120;       % peak1 - band ratio numerator
x4=1020;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,7)=b1;

% lipid to amide II
% old biomarker 46, new #8
x1=840;        % baseline low
x2=4000;       % baseline high
x3=2924;       % peak1 - band ratio numerator
x4=1544;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,8)=b1;

% phosphate to amide II
% old biomarker 48, new #9
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1080;       % peak1 - band ratio numerator
x4=1548;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,9)=b1;

% lipid to sugars
% old biomarker 38, new #10
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1744;       % peak1 - band ratio numerator 
x4=1162;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator 
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,10)=b1;

% sugar/phosphate?
% old biomarker 19, new #11
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1016;       % peak1 - band ratio numerator
x4=1080;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,11)=b1;

% ooze 1
% old biomarker 59, new #12
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1252;       % peak1 - band ratio numerator
x4=1544;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,12)=b1;

% sugar/phosphate?
% old biomarker 39, new #13
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1024;       % peak1 - band ratio numerator
x4=1080;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator 
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,13)=b1;

% ooze to phosphate
% old biomarker 42, new #14
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1080;       % peak1 - band ratio numerator
x4=1244;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,14)=b1;

% amide II structure
% old biomarker 47, new #15
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1516;       % peak1 - band ratio numerator
x4=1582;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,15)=b1;

% phosphate to protein
% old biomarker 7, new #16
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1158;       % peak1 - band ratio numerator
x4=1544;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,16)=b1;

% phosphate to amide A
% old biomarker 23, new #17
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1080;       % peak1 - band ratio numerator
x4=3290;       % peak2 - band ratio denominator
x5=2000;        % baseline 2 low
x6=3700;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,17)=b1;

% amide II protein band marker for structure on band 
% old biomarker 58, new #18
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1556;       % peak1 - band ratio numerator
x4=1548;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,18)=b1;

% ooze to phospahte
% old biomarker 2, new #19
x1=840;        % baseline low
x2=1774;       % baseline high
x3=1012;       % peak1 - band ratio numerator 
x4=1256;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator 
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,19)=b1;

% 1144-1182 phosphate to protein
% old summed biomarker 30, new #20 
x1=840;        % baseline low of range
x2=1774;       % baseline high of range
x3=1144;       % beginning of range
x4=1182;       % end of range
x5=1544;       % reference peak
x6=840;        % baseline low for reference peak
x7=1774;       % baseline high for reference peak
k1=2001-x1/2;  % index of baseline low
k2=2001-x2/2;  % index of baseline high
k3=2001-x3/2;  % index of peak1 - numerator peak
k4=2001-x4/2;  % index of peak2 - denominator
k5=2001-x5/2;  % index of reference peak
k6=2001-x6/2;  % index of reference baseline low
k7=2001-x7/2;  % index of reference baseline high
for i=1:nx
    for j=1:ny
        y1=-log(data(i,j,k1)/100);
        y2=-log(data(i,j,k2)/100);
        y5=-log(data(i,j,k5)/100);
        y6=-log(data(i,j,k6)/100);
        y7=-log(data(i,j,k7)/100);
        br=((y7-y6)/(x7-x6))*(x5-x7)+y7;
        ysum=0.0;
        for k=k4:k3
            yk=-log(data(i,j,k)/100);
            xk=4002-2*k;
            ba=((y2-y1)/(x2-x1))*(xk-x2)+y2;
            ysum=ysum+yk-ba;
        end
        b1(i,j)=(ysum/(k3-k4+1))/(y5-br);
    end
end
b(:,:,20)=b1;

% CN triple bond?
% new #21
x1=2230;        % baseline low
x2=2288;       % baseline high
x3=2250;       % peak1 - band ratio numerator
x4=1548;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,21)=b1;

% other bigger peak with CN triple bond
% new #22
x1=836;        % baseline low
x2=884;       % baseline high
x3=858;       % peak1 - band ratio numerator
x4=1548;       % peak2 - band ratio denominator
x5=840;        % baseline 2 low
x6=1774;       % baseline 2 high
i1=2001-x1/2;  % index of baseline low
i2=2001-x2/2;  % index of baseline high
i3=2001-x3/2;  % index of peak1 - numerator peak
i4=2001-x4/2;  % index of peak2 - denominator
i5=2001-x5/2;  % index of baseline 2 low
i6=2001-x6/2;  % index of baseline 2 high
ix=[i1 i2 i3 i4 i5 i6];
y=-log(data(:,:,ix)/100);
b1=(y(:,:,3)-((x3-x1).*(y(:,:,2)-y(:,:,1))./(x2-x1)+y(:,:,1)))./(y(:,:,4)-((x4-x5).*(y(:,:,6)-y(:,:,5))./(x6-x5)+y(:,:,5)));
b(:,:,22)=b1;


 % filter "b" for biomarkers for acceptable range
 bmin=-1.0;bmax=3.5;
 for k=1:nb
    for i=1:nx
            for j=1:ny
                if b(i,j,k)>bmax
                b(i,j,k)=bmax;
                end
                if b(i,j,k)<bmin
                b(i,j,k)=bmin;
                end
            end
    end
 end
% convert 3D biomarkers b(i,j,m) to 2D biomarkers X(n,m)
for m=1:nb
    b1=b(:,:,m);
    X1(1:nx*ny)=b1;
    X(:,m)=X1;
end
% calculate average and std dev of each
Xbar=mean(X);
sX=std(X);

% scale biomarkers for plotting only
Xs=X;
for k=1:nb
    Xs(:,k)=0.5+(X(:,k)-Xbar(k)).*(0.5/2)./sX(k);
end
% put Xs(n,m) back into image plane bs(i,j,m)
for i=1:nx
    for j=1:ny
        bs(i,j,:)=Xs((j-1)*nx+i,:);
    end
end
% filter scaled biomarkers again
% filter "bs" biomarkers for acceptable range
bsmin=0.0;bsmax=1.0;
for k=1:nb
    for i=1:nx
            for j=1:ny
                if bs(i,j,k)>bmax
                bs(i,j,k)=bmax;
                end
                if bs(i,j,k)<bmin
                bs(i,j,k)=bmin;
                end
            end
    end
end
% convert 3D biomarkers b(i,j,m) to 2D biomarkers X(n,m)
for m=1:nb
    b1=bs(:,:,m);
    X1(1:nx*ny)=b1;
    Xs(:,m)=X1;
end

figure(1)
% plot a histogram for each scaled biomarker
bc=bsmin:0.005:bsmax;
for k=1:nb
    figure(k);
    hist(Xs(:,k),bc)
    axis([bsmin bsmax 0 6000]);
end

% write a bitmap for each scaled biomarker
for k=1:nb
    x=k;
    imwrite(bs(:,:,k),['bs',num2str(x),'.bmp']);
end

