settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,100,IgnoreAspect);

dotfactor=8;

real r=0.03;

draw((1,1)--(r,1),blue);
draw((-1,-1)--(-r,-1),blue);

dot((0,1),blue,NoFill);
dot((0,-1),blue,NoFill);

xaxis(-1,1,red);
labelx("$x$",0.9,red);
yaxis(-1.2,1.2,red);
label(rotate(90,(0,0))*"$g(x)$",(-0.4,0.93),red);