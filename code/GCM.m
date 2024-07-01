function [CM,Input_list] = GCM(T,N,M,L0,a)%competition matrix (Equal length list)

L = zeros(L0,M);

elements = 1:N;

for col = 1:M

    elements = elements(randperm(length(elements)));

    L(:, col) = elements(1:L0);
end

T2=T(:,2);
IA=T2(L);
DA=rand(L0,M).*(1-a)+a.*IA;
[~,I]=sort(DA,'descend');
IL=zeros(L0,M);
for j=1:M
    TEM=L(:,j);
    IL(:,j)=TEM(I(:,j));
end
Input_list=IL;%The number indicates the object, and the position indicates the ranking
%Generate competition matrix
CM=zeros(N);
for j=1:M
    for i=1:L0
        for k=1:L0-i
            CM(IL(i,j),IL(i+k,j))=CM(IL(i,j),IL(i+k,j))+1;
        end
    end
end
end


