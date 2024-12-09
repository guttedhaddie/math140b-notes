settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,100,IgnoreAspect);

real f(real x){return x*(2^x)-1;}

path p=graph(f,-0.3,1.3);

draw(p,blue);

pair xi=intersectionpoint(p,(0,0)--(1,0));

xaxis("$x$",-0.3,1.3,red,RightTicks(new real[]{1}));
yaxis("$g(x)$",red,LeftTicks(new real[]{-1,1,2,3}));

xtick(Label("$\xi$",align=S),xi,S,heavygreen);

