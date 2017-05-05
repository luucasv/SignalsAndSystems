function h = makeNiceStem(x, y, savename, ptitle, pxlabel, pylabel)
  h = figure;
  stem(x, y,'.b-','LineWidth', 1);
  grid on;
  FN = findall(h,'-property','FontName');
  set(FN,'FontName','/usr/share/fonts/dejavu/DejaVuSerifCondensed.ttf');
  FS = findall(h,'-property','FontSize');
  set(FS,'FontSize',6);
  title(ptitle,...
        'FontName','/usr/share/fonts/dejavu/DejaVuSerif-Italic.ttf',...
        'FontSize',8);
  xlabel(pxlabel,'FontSize',8);
  ylabel(pylabel, 'FontSize',8);
  W = 4; H = 3;
  set(h,'PaperUnits','inches')
  set(h,'PaperOrientation','portrait');
  set(h,'PaperSize',[H,W])
  set(h,'PaperPosition',[0,0,W,H])
  print(h,'-dpng','-color', strcat(savename, '.png'))
end