settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400);

real f(real x){return sin(x) +(1/4)*sin(4*x) +(1/9)*sin(9*x) +(1/16)*sin(16*x) +(1/25)*sin(25*x) +(1/36)*sin(36*x) +(1/49)*sin(47*x)  +(1/64)*sin(64*x) +(1/81)*sin(81*x) +(1/100)*sin(100*x)  +(1/121)*sin(121*x)  +(1/144)*sin(144*x);}

draw(graph(f,-2.1pi,2.1pi,10000,operator --),blue);

xaxis(-2.1pi,2.2pi,red);
yaxis("$f(x)$",-1.5,1.5,red,LeftTicks(new real[]{-1,1}));
labelx("$x$",2.1pi,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$-2\pi$",align=S),-2pi,S,red);
xtick(Label("$-\pi$",align=S),-pi,S,red);
