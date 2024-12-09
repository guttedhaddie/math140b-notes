settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,120,IgnoreAspect);

real f(real x){return 1/x;}
real g(real x){return 1/(x^2);}

path p=graph(g,0.5,4);
draw(p,blue);
draw(reflect((0,0),(0,1))*p,blue);

xaxis(-4,4,red);
labelx("$x$",3.5,red);
yaxis(0,g(0.5),red);
label(rotate(90,(0,0))*"$h(x)$",(-1,3.5),red);