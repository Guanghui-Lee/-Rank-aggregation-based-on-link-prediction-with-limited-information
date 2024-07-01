function A=link_prediction(NN)%Generate enhanced matrix
[n,~]=size(NN);
NN0 = NN;
NN = 2 * (NN + NN');
NN(NN == 0) = 1;
NN = NN - eye(n);
NN(NN ~= 1) = 0;
P = NN0 ./ (NN0 + NN0');
P(isnan(P)) = 0;

TEM = P^2;
B = TEM.*NN;
B = B ./ (B + B');
B(isnan(B))=0;
A = B + P;

end


