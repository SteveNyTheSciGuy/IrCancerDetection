%IR cae 4 size biomarkers
%last revised 7/1/13 by Steven Nystrom

%bm1a
bss=bs(:,:,1); %biomarker scale size
lv=.265; rv=.39; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,1)=bss;

%bm1b
bss=bs(:,:,1); %biomarker scale size
lv=.71; rv=.88; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,2)=bss;

%bm2a
bss=bs(:,:,2); %biomarker scale size
lv=.205; rv=.33; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,3)=bss;

%bm2b
bss=bs(:,:,2); %biomarker scale size
lv=.705; rv=.83; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,4)=bss;

%bm3a
bss=bs(:,:,3); %biomarker scale size
lv=.21; rv=.32; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,5)=bss;

%bm3b
bss=bs(:,:,3); %biomarker scale size
lv=.675; rv=.79; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,6)=bss;

%bm4a
bss=bs(:,:,4); %biomarker scale size
lv=.305; rv=.465; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,7)=bss;

%bm4b
bss=bs(:,:,4); %biomarker scale size
lv=.685; rv=.785; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,8)=bss;

%bm5a
bss=bs(:,:,5); %biomarker scale size
lv=.22; rv=.315; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,9)=bss;

%bm5b
bss=bs(:,:,5); %biomarker scale size
lv=.45; rv=.565; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,10)=bss;

%bm6a
bss=bs(:,:,6); %biomarker scale size
lv=.35; rv=.49; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,11)=bss;

%bm6b
bss=bs(:,:,6); %biomarker scale size
lv=.695; rv=.775; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,12)=bss;

%bm7a
bss=bs(:,:,7); %biomarker scale size
lv=.3; rv=.41; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,13)=bss;

%bm7b
bss=bs(:,:,7); %biomarker scale size
lv=.48; rv=.56; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,14)=bss;

%bm8a
bss=bs(:,:,8); %biomarker scale size
lv=.34; rv=.47; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,15)=bss;

%bm8b
bss=bs(:,:,8); %biomarker scale size
lv=.655; rv=.73; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,16)=bss;

%bm9a
bss=bs(:,:,9); %biomarker scale size
lv=.335; rv=.46; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,17)=bss;

%bm9b
bss=bs(:,:,9); %biomarker scale size
lv=.583; rv=.67; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,18)=bss;

%bm10a
bss=bs(:,:,10); %biomarker scale size
lv=.21; rv=.345; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,19)=bss;

%bm10b
bss=bs(:,:,10); %biomarker scale size
lv=.555; rv=.67; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,20)=bss;

%bm11a
bss=bs(:,:,11); %biomarker scale size
lv=.325; rv=.485; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,21)=bss;

%bm11b
bss=bs(:,:,11); %biomarker scale size
lv=.6; rv=.69; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,22)=bss;

%bm12a
bss=bs(:,:,12); %biomarker scale size
lv=.325; rv=.425; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,23)=bss;

%bm12b
bss=bs(:,:,12); %biomarker scale size
lv=.58; rv=.67; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,24)=bss;

%bm13a
bss=bs(:,:,13); %biomarker scale size
lv=.34; rv=.475; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,25)=bss;

%bm13b
bss=bs(:,:,13); %biomarker scale size
lv=.585; rv=.685; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,26)=bss;

%bm14
bss=bs(:,:,14); %biomarker scale size
lv=.4; rv=.585; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,27)=bss;

%bm15
bss=bs(:,:,15); %biomarker scale size
lv=.52; rv=.62; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,28)=bss;

%bm16a
bss=bs(:,:,16); %biomarker scale size
lv=.345; rv=.46; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,29)=bss;

%bm16b
bss=bs(:,:,16); %biomarker scale size
lv=.578; rv=.66; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,30)=bss;

%bm17a
bss=bs(:,:,17); %biomarker scale size
lv=.35; rv=.46; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,31)=bss;

%bm17b
bss=bs(:,:,17); %biomarker scale size
lv=.56; rv=.645; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,32)=bss;

%bm18a
bss=bs(:,:,18); %biomarker scale size
lv=.4; rv=.51; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,33)=bss;

%bm18b
bss=bs(:,:,18); %biomarker scale size
lv=.57; rv=.67; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,34)=bss;

%bm19a
bss=bs(:,:,19); %biomarker scale size
lv=.385; rv=.5; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,35)=bss;

%bm19b
bss=bs(:,:,19); %biomarker scale size
lv=.57; rv=.65; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,36)=bss;

%bm20a
bss=bs(:,:,20); %biomarker scale size
lv=.35; rv=.465; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,37)=bss;

%bm20b
bss=bs(:,:,20); %biomarker scale size
lv=.55; rv=.64; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,38)=bss;

%bm21
bss=bs(:,:,21); %biomarker scale size
lv=.465; rv=.595; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,39)=bss;

%bm22a
bss=bs(:,:,22); %biomarker scale size
lv=.45; rv=.525; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,40)=bss;

%bm22b
bss=bs(:,:,22); %biomarker scale size
lv=.615; rv=.68; %left and right values
for i=1:nx
    for j=1:ny
        if bss(i,j)>=lv && bss(i,j)<=rv
        bss(i,j)=1;
        else
        bss(i,j)=0;
        end
    end
end
BSS(:,:,41)=bss;

close all
%preallocate mem
XX=zeros(nx*ny,41);bb=zeros(nx,ny,41);
load('MyColormaps');
%finds size of each biomarker
for ij=1:41
[B,L,N,A] = bwboundaries(BSS(:,:,ij),'holes'); %find boundries
%B=exterior boundries L=numbers each cluster N=number of clusters
bc=zeros(N,1,1);
vv=L(:); %vectorises matrix
cc=vv(vv~=0); %removes 0 for faster iterations
%finds how many pixels are in each cluster
for i=1:N
    bc(i)=length(cc(cc==i));
end
Q=length(vv);bm=zeros(Q,1);
%replace cluster number w/ cluster area,perimiter,perimiter2area ratio
for j=1:N
    for i=1:length(vv) %rows
        if vv(i)==j
            bm(i)=bc(j);
            continue %goes through all matrix search for values
        end
    end
end
med=median(cc);
avg=mean(cc);
maxx=max(cc);
minn=min(cc);
XX(:,ij)=bm;
bb(:,:,ij)=reshape(bm,nx,ny);
    figure(ij),set(gcf,'Color',[1,1,1])
    h1=subplot(2,3,[1 2 4 5]); 
    contourf(flipud(bb(:,:,ij))),colormap(bm2_Colormap),colorbar, axis off image
    h2=subplot(2,3,6); axis off
    text(0,.5,sprintf('Size BM: %i \n\nNumber of Clusters: %i \nMedian size: %i \nAverage Size: %i \nMax: %i \nMin: %i ',ij,N,med,avg,maxx,minn),'Parent',h2)
    h3=subplot(2,3,3); hist(cc)
    saveas(figure(ij),sprintf('size_bm%i_info.jpg',ij))
    sprintf('%i',ij)
end
figure(ij+1),imshow(bs(:,:,1))

b=cat(3,b,bb);
X=cat(2,X,XX);