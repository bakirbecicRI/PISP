f1=figure('Tag','Figure 1','Menubar','none','Units','normalized','Position',[0.35 0.2 0.3 0.6]);
uicontrol('Style','Text','String','APROKSIMACIJA PODATAKA SUMA','Units','normalized','FontSize',12,'Position',[0.1 0.89 0.8 0.05],'parent',f1);
uicontrol('Style','Text','String','Polinom i interval','Units','normalized','FontSize',10,'Position',[0.07 0.82 0.18 0.05],'parent',f1);
polinom=uicontrol('Style','Edit','Units','normalized','FontSize',12,'HorizontalAlignment','Left','Position',[0.3 0.82 0.18 0.05],'parent',f1);
interval=uicontrol('Style','Edit','Units','normalized','FontSize',12,'HorizontalAlignment','Left','Position',[0.52 0.82 0.18 0.05],'parent',f1);
popup=uicontrol('Style','Popup','String','|+|*|o|x','Callback','draw','Units','normalized','Position',[0.72 0.803 0.18 0.05],'parent',f1);
m1=uimenu(f1,'Label','Vrsta Linije');
uimenu(m1, 'Label', 'isprekidana', 'Callback','set(findobj(gcf, ''Tag'', ''linija''), ''LineStyle'', ''--'')');
uimenu(m1, 'Label', 'tackasta', 'Callback','set(findobj(gcf, ''Tag'', ''linija''), ''LineStyle'', '':'')');
uimenu(m1, 'Label', 'puna', 'Callback', 'set(findobj(gcf, ''Tag'', ''linija''), ''LineStyle'', ''-'')');
grafik=axes('Position',[0.1 0.10 0.8 0.63],'parent',f1);