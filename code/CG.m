function [K,R]=CG(NN,REAL)
G=NN;
[~,m] = size(G);
O = sum(NN,2);
G = (sum(NN,1))';
Q = (O - G) ./ (G + O);
Q(isnan(Q))=-1;
L=tiedrank(Q);
R=m+1-L;%Aggregated ranking
K = corr(REAL,R,'Type','kendall');%Kendall rank correlation coefficient between aggregated ranking and groundtruth ranking
end