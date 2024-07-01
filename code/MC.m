function [K,R]=MC(A,REAL)
[N,~]=size(A);
A=A'./(sum(A,1))';
A(isnan(A))=0;
A(isinf(A))=0;
B=sum(A,2);
a=find(B==0);
la=length(a);
for i=1:la
    A(a(i),a(i))=1;
end
S=zeros(N,1);
Stemp=ones(N,1);
c=0.85;
count=0;
x=abs(S-Stemp);
a=(1-c);
while max(x)>1E-10
    S=a+c.*(Stemp'*A)';
    x=abs(S-Stemp);
    Stemp=S;
    count=count+1;
end
L=tiedrank(S);
R=1+N-L;%Aggregated ranking
K = corr(R,REAL,'type','kendall');%Kendall rank correlation coefficient between aggregated ranking and groundtruth ranking
end
