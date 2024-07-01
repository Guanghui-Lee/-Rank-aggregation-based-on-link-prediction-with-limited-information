function paint2(M,L0,P1,P2,P3,P4,P5,P6,P7,P8,P9)

low =  [139,170,211]/255;
high = [251,100,119]/255;
midcolor = [255,230,170]/255;


n = 128; 
cmap1 = [linspace(low(1), midcolor(1), n/4)', linspace(low(2), midcolor(2), n/4)', linspace(low(3), midcolor(3), n/4)'];
cmap3 = [linspace(midcolor(1), high(1), 3*n/4)', linspace(midcolor(2), high(2), 3*n/4)', linspace(midcolor(3), high(3), 3*n/4)'];
cmap = [cmap1; cmap3];


minBM=min(min([P1,P4,P7]));
maxBM=max(max([P1,P4,P7]));
minCG=min(min([P3,P6,P9]));
maxCG=max(max([P3,P6,P9]));
minMC=min(min([P2,P5,P8]));
maxMC=max(max([P2,P5,P8]));


Pic = tiledlayout(3,3);
Pic.TileSpacing = 'compact';
Pic.Padding = 'compact';
set(gcf, 'Position', [300, 50, 570, 650]);

%BM
nexttile
imagesc(M, L0, P1);
set(gca,'YDir','normal'); 
pbaspect([1 1 1]);
colormap(cmap);
clim([minBM maxBM]);
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.75', 'FontName', 'Arial', 'FontSize', 12);
xticks([0,100,200,300]);
yticks([0,20,40,60])


nexttile
imagesc(M, L0, P4);
set(gca,'YDir','normal','YTicklabel',[]);
pbaspect([1 1 1]);
colormap(cmap);
clim([minBM maxBM]); 
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.85', 'FontName', 'Arial', 'FontSize', 12);


nexttile
imagesc(M, L0, P7);
set(gca,'YDir','normal','YTicklabel',[]); 
pbaspect([1 1 1]);
colormap(cmap);
clim([minBM maxBM]);
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.95', 'FontName', 'Arial', 'FontSize', 12);
cb = colorbar;
cb.Location = 'eastoutside';


%CG
nexttile
imagesc(M, L0, P3);
set(gca,'YDir','normal');
pbaspect([1 1 1]);
colormap(cmap);
clim([minCG maxCG]); 
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.75', 'FontName', 'Arial', 'FontSize', 12);


nexttile
imagesc(M, L0, P6);
set(gca,'YDir','normal','YTicklabel',[]);
pbaspect([1 1 1]);
colormap(cmap);
clim([minCG maxCG]); 
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.85', 'FontName', 'Arial', 'FontSize', 12);


nexttile
imagesc(M, L0, P9);
set(gca,'YDir','normal','YTicklabel',[]); 
pbaspect([1 1 1]);
colormap(cmap);
clim([minCG maxCG]);
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.95', 'FontName', 'Arial', 'FontSize', 12);
cb = colorbar;
cb.Location = 'eastoutside';


%MC
nexttile
imagesc(M, L0, P2);
set(gca,'YDir','normal'); 
pbaspect([1 1 1]);
colormap(cmap);
clim([minMC maxMC]); 
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.75', 'FontName', 'Arial', 'FontSize', 12);

nexttile
imagesc(M, L0, P5);
set(gca,'YDir','normal','YTicklabel',[]); 
hYLabel = get(gca,'YLabel'); 
set(hYLabel,'Rotation',0); 
pbaspect([1 1 1]);
colormap(cmap);
cb.Title.FontSize = 14; 
cb.Title.FontName = 'Arial'; 
clim([minMC maxMC]); 
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.85', 'FontName', 'Arial', 'FontSize', 12);


nexttile
imagesc(M, L0, P8);
set(gca,'YDir','normal','YTicklabel',[]); 
hYLabel = get(gca,'YLabel'); 
set(hYLabel,'Rotation',0);
pbaspect([1 1 1]);
colormap(cmap);
cb = colorbar;
cb.Location = 'eastoutside';
clim([minMC maxMC]); 
set(gca, 'FontName', 'Arial','FontSize',9);
title('α=0.95', 'FontName', 'Arial', 'FontSize', 12);

end