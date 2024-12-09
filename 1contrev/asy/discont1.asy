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

real f(real x){return x+3;}

real r=0.07;

draw((0,f(0))--(3-r,f(3-r)),blue);
draw((5.5,f(5.5))--(3+r,f(3+r)),blue);

dot((3,f(3)),blue,NoFill);

xaxis(0,5.5,red);
labelx("$x$",5.5,red);
yaxis("$f_1(x)$",0,f(5.5),red);