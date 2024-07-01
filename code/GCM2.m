function [CM,Input_list] = GCM2(T,N,M,L0,a)%competition matrix (Unequal length list)

L = zeros(L0,M);

LL = randi([2,L0], [1,M]);

elements = 1:N;
for col = 1:M

    elements = elements(randperm(length(elements)));

    L(1:LL(col),col) = elements(1:LL(col));
end

Tem_L = zeros(L0,M);
Tem_L(L~=0) = 1;


L(L==0) = N+1;
IA = [T(:,2);0];
IA = IA(L);
DA = rand(L0,M) .* Tem_L * (1-a) + a * IA;
[~,I]=sort(DA,'descend');
IL=zeros(L0,M);
for j=1:M
    TEM=L(:,j);
    IL(:,j)=TEM(I(:,j));
end
Input_list=IL;%The number indicates the object, and the position indicates the ranking
Input_list(Input_list==N+1)=0;
%Generate competition matrix
CM=zeros(N);
for j=1:M
    for i=1:LL(j)
        for k=1:LL(j)-i
            CM(IL(i,j),IL(i+k,j))=CM(IL(i,j),IL(i+k,j))+1;
        end
    end
end
end