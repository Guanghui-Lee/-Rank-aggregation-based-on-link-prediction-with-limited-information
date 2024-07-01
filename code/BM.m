function [K,R]=BM(NN,REAL)
[~,m]=size(NN);
B=sum(NN,2);
L=tiedrank(B);
R = m+1-L;%Aggregated ranking
K = corr(R,REAL,'type','kendall');%Kendall rank correlation coefficient between aggregated ranking and groundtruth ranking
end