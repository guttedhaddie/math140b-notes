settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,120,IgnoreAspect);

dotfactor=8;

dot((0,1),blue);
dot((0,0),blue,NoFill);

real f(real x){return x*sin(1/x);}

path p=graph(f,0.015,0.08)..graph(f,0.08,0.16)..graph(f,0.16,0.32)..graph(f,0.32,0.64);

draw(p,blue);
draw(reflect((0,0),(0,1))*reverse(p),blue);

xaxis(red);
yaxis("$f_2(x)$",-0.22,1.2,red);
labelx("$x$",0.6,red);
