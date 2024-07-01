function [M,alpha075,alpha085,alpha095] = main1(N)
tic
M=1000:1000:20000;
L0 = 2;
for i=1:length(M)
    [alpha075(i,:)] = main(N, M(i), 0.75);
    [alpha085(i,:)] = main(N, M(i), 0.85);
    [alpha095(i,:)] = main(N, M(i), 0.95);
end
    function [K] = main(N,M,a)%pairwise comparison
        parfor i=1:100
            IA(:,i)=rand(N,1);%The inherent ability of 1:N
            [~, idx1] = sort(IA(:,i),'descend');
            [idx3,idx2]=sort(idx1);
            GTR=idx2;%ground truth ranking
            T=[idx3,IA(:,i)];
            [CM] = GCM(T,N,M,L0,a);
            K1(i) = BM(CM,GTR);
            K2(i) = MC(CM,GTR);
            K3(i) = CG(CM,GTR);
            [EM] = link_prediction(CM);
            K4(i) = BM(EM,GTR);
            K5(i) = MC(EM,GTR);
            K6(i) = CG(EM,GTR);
        end
        K=mean([K1',K2',K3',K4',K5',K6']);
    end
paint1(M,alpha075,alpha085,alpha095)
toc
end