settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,110,IgnoreAspect);

dotfactor=8;
int n=4;
draw((-1,0)--(0,0),blue);
dot((0,0),blue);
dot((-1,0),blue);
dot((1,0),blue);

real r=0.02;
draw((1-r)*(0,n)+r*(1/n,0)--(1/n,0)--(1-0.02,0),blue);
dot((0,n),blue,NoFill);
xaxis(-1.1,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(0,4.3,red);
labelx("$x$",1.1,S,red);
label(rotate(90,(0,0))*"$f_n(x)$",(-0.4,3.6),red);

xtick(Label("$\frac 1n$",align=S),1/n,S,red);
ytick(Label("$n$",align=W),n,W,red);