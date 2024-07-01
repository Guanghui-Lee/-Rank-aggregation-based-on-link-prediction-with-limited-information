function [M,L0,P1,P2,P3,P4,P5,P6,P7,P8,P9] = main2(N)%general cases
tic
M = (20:20:300)';
L0 = (4:4:60)';

    function P = main0(m, l0, a)
        parfor i=1:100
            IA=rand(N,1);%The inherent ability of 1:N
            [~, idx1] = sort(IA,'descend');
            [idx3,idx2]=sort(idx1);
            GTR=idx2;%Ground truth ranking
            T=[idx3,IA];
            CM = GCM2(T,N,m,l0,a);
            K1(i) = BM(CM,GTR);
            K2(i) = MC(CM,GTR);
            K3(i) = CG(CM,GTR);
            EM = link_prediction(CM);
            K4(i) = BM(EM,GTR);
            K5(i) = MC(EM,GTR);
            K6(i) = CG(EM,GTR);
        end
        P10 = mean(K4-K1);
        P20 = mean(K5-K2);
        P30 = mean(K6-K3);
        P = [P10',P20',P30'];
    end

[M_grid, L0_grid] = meshgrid(M, L0);

P075 = arrayfun(@(M,L0)main0(M,L0, 0.75), M_grid, L0_grid,'UniformOutput',false);
P085 = arrayfun(@(M,L0)main0(M,L0, 0.85), M_grid, L0_grid,'UniformOutput',false);
P095 = arrayfun(@(M,L0)main0(M,L0, 0.95), M_grid, L0_grid,'UniformOutput',false);

P1 = cellfun(@(x) x(1), P075);
P2 = cellfun(@(x) x(2), P075);
P3 = cellfun(@(x) x(3), P075);
P4 = cellfun(@(x) x(1), P085);
P5 = cellfun(@(x) x(2), P085);
P6 = cellfun(@(x) x(3), P085);
P7 = cellfun(@(x) x(1), P095);
P8 = cellfun(@(x) x(2), P095);
P9 = cellfun(@(x) x(3), P095);

paint2(M,L0,P1,P2,P3,P4,P5,P6,P7,P8,P9)
toc
end