settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,100,IgnoreAspect);

real f(real x){return sin(1/x);}

path p=graph(f,0.005,0.01)..graph(f,0.01,0.02)..graph(f,0.02,0.04)..graph(f,0.04,0.08)..graph(f,0.08,0.16)..graph(f,0.16,0.32)..graph(f,0.32,0.64);

draw(p,blue);
draw(reflect((0,0),(0,1))*reverse(p),blue);

xaxis(red);
yaxis(-1.1,1.2,red);
labelx("$x$",0.6,red);
label(rotate(90,(0,0))*"$j(x)$",(-0.25,0.93),red);