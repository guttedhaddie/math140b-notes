settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,120,IgnoreAspect);


int n=4;
draw((-1,-1)--(-1/n,-1)--(1/n,1)--(1,1),blue);
xaxis(-1.1,1.2,red,RightTicks(new real[]{-1,1}));
yaxis("$f'_n(x)$",-1.1,1.2,red,LeftTicks(new real[]{-1,1}));
labelx("$x$",1.1,S,red);

xtick(Label("$\frac 1n$",align=S),1/n,S,red);
xtick(Label("$-\frac 1n$",align=S),-1/n,S,red);