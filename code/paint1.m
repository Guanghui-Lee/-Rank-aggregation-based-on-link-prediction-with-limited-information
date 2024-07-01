function paint1(M,K1,K2,K3)
Pic = tiledlayout(3,3);
Pic.TileSpacing = 'compact';
Pic.Padding = 'compact';
set(gcf, 'Position', [300, 50, 582, 750]);
color1='#A797DA';
color2='#E79397';
color3='#F1C89A';

% BM
ax1 = nexttile;
plot(M, K1(:, 4), '--s', 'LineWidth', 1.5, 'Color', color1, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color1,'MarkerSize',4); % BM'
hold on;
plot(M, K1(:, 1), '-^', 'LineWidth', 1.5, 'Color', color1, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color1,'MarkerSize',4); % BM
set(gca, 'FontName', 'Arial');
pbaspect([1 1.1 1]);
title('α=0.75', 'FontName', 'Arial', 'FontSize', 12);
y1 = K1(:, 4);
y2 = K1(:, 1);
y = [y1;flipud(y2)];
x = [M, flip(M)];
c=hex2rgb(color1);
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off'); 
ax = gca();
ax.XRuler.Exponent = 3;

ax4=nexttile;
plot(M, K2(:, 4), '--s', 'LineWidth', 1.5, 'Color', color1, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color1,'MarkerSize',4); % BM'
hold on;
plot(M, K2(:, 1), '-^', 'LineWidth', 1.5, 'Color', color1, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color1,'MarkerSize',4); % BM
set(gca, 'FontName', 'Arial','YTicklabel',[]);
title('α=0.85', 'FontName', 'Arial', 'FontSize', 12);
pbaspect([1 1.1 1]);
y1 = K2(:, 4);
y2 = K2(:, 1);
y = [y1;flipud(y2)];
x = [M, flip(M)];
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off');
ax = gca();
ax.XRuler.Exponent = 3;
hold off


ax7=nexttile;
plot(M, K3(:, 4), '--s', 'LineWidth', 1.5, 'Color', color1, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color1,'MarkerSize',4); % BM'
hold on;
plot(M, K3(:, 1), '-^', 'LineWidth', 1.5, 'Color', color1, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color1,'MarkerSize',4); % BM
set(gca, 'FontName', 'Arial','YTicklabel',[]);
title('α=0.95', 'FontName', 'Arial', 'FontSize', 12);
pbaspect([1 1.1 1]);
y1 = K3(:, 4);
y2 = K3(:, 1);
y = [y1;flipud(y2)];
x = [M, flip(M)];
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off');
ax = gca();
ax.XRuler.Exponent = 3;

%CG
ax2=nexttile;
plot(M, K1(:, 6), '--s', 'LineWidth', 1.5, 'Color', color2, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color2,'MarkerSize',4); % CG'
hold on;
plot(M, K1(:, 3), '-^', 'LineWidth', 1.5, 'Color', color2, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color2,'MarkerSize',4); % CG
set(gca, 'FontName', 'Arial');
title('α=0.75', 'FontName', 'Arial', 'FontSize', 12);
pbaspect([1 1.1 1]);
y1 = K1(:, 6);
y2 = K1(:, 3);
y = [y1;flipud(y2)];
x = [M, flip(M)];
c=hex2rgb(color2);
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off');
ax = gca();
ax.XRuler.Exponent = 3;

ax5=nexttile;
plot(M, K2(:, 6), '--s', 'LineWidth', 1.5, 'Color', color2, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color2,'MarkerSize',4); % CG'
hold on;
plot(M, K2(:, 3), '-^', 'LineWidth', 1.5, 'Color', color2, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color2,'MarkerSize',4); % CG
set(gca, 'FontName', 'Arial','Yticklabel',[]);
title('α=0.85', 'FontName', 'Arial', 'FontSize', 12);
pbaspect([1 1.1 1]);
y1 = K2(:, 6);
y2 = K2(:, 3);
y = [y1;flipud(y2)];
x = [M, flip(M)];
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off');
ax = gca();
ax.XRuler.Exponent = 3;

ax8=nexttile;
plot(M, K3(:, 6), '--s', 'LineWidth', 1.5, 'Color', color2, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color2,'MarkerSize',4); % CG'
hold on;
plot(M, K3(:, 3), '-^', 'LineWidth', 1.5, 'Color', color2, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color2,'MarkerSize',4); % CG
set(gca, 'FontName', 'Arial','YTicklabel',[]);
title('α=0.95', 'FontName', 'Arial', 'FontSize', 12);
pbaspect([1 1.1 1]);
y1 = K3(:, 6);
y2 = K3(:, 3);
y = [y1;flipud(y2)];
x = [M, flip(M)];
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off');
set(gca, 'FontName', 'Arial','Yticklabel',[]);
ax = gca();
ax.XRuler.Exponent = 3;
hold off

% MC
ax3=nexttile;
plot(M, K1(:, 5), '--s', 'LineWidth', 1.5, 'Color', color3, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color3,'MarkerSize',4); % MC'
hold on;
plot(M, K1(:, 2), '-^', 'LineWidth', 1.5, 'Color', color3, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color3,'MarkerSize',4); % MC
set(gca, 'FontName', 'Arial');
title('α=0.75', 'FontName', 'Arial', 'FontSize', 12);
ax = gca();
ax.XRuler.Exponent = 3;
pbaspect([1 1.1 1]);
y1 = K1(:, 5);
y2 = K1(:, 2);
y = [y1;flipud(y2)];
x = [M, flip(M)];
c=hex2rgb(color3);
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off'); 

ax6=nexttile;
plot(M, K2(:, 5), '--s', 'LineWidth', 1.5, 'Color', '#F1C89A', 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', '#F1C89A','MarkerSize',4); % MC'
hold on;
plot(M, K2(:, 2), '-^', 'LineWidth', 1.5, 'Color', '#F1C89A', 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', '#F1C89A','MarkerSize',4); % MC
title('α=0.85', 'FontName', 'Arial', 'FontSize', 12);
set(gca, 'FontName', 'Arial','YTicklabel',[]);
ax = gca();
ax.XRuler.Exponent = 3;
pbaspect([1 1.1 1]);
y1 = K2(:, 5);
y2 = K2(:, 2);
y = [y1;flipud(y2)];
x = [M, flip(M)];
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off');

ax9=nexttile;
plot(M, K3(:, 5), '--s', 'LineWidth', 1.5, 'Color', color3, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color3,'MarkerSize',4); % MC'
hold on;
plot(M, K3(:, 2), '-^', 'LineWidth', 1.5, 'Color', color3, 'MarkerIndices', 1:2:length(K1), 'MarkerFaceColor', color3,'MarkerSize',4); % MC
hold on;
set(gca, 'FontName', 'Arial','Yticklabel',[]);
title('α=0.95', 'FontName', 'Arial', 'FontSize', 12);
set(gca, 'FontName', 'Arial');
ax = gca();
ax.XRuler.Exponent = 3;
pbaspect([1 1.1 1]);
y1 = K3(:, 5);
y2 = K3(:, 2);
y = [y1;flipud(y2)];
x = [M, flip(M)];
h = fill(x, y,c,'FaceAlpha',0.15,'LineStyle','none');
set(h,'HandleVisibility','off');

linkaxes([ax1,ax2,ax3,ax4,ax5,ax6,ax7,ax8,ax9],'xy');

end