settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170,150,IgnoreAspect);

real f(real x){return (2-x)/x;}

draw(graph(f,1/3,5.7),blue);

xaxis("$x$",0,5.8,red,RightTicks(new real[]{1,2,3,4,5}));
yaxis("$f(x)$",-1,5,red,LeftTicks(new real[]{-1,0,1,2,3,4,5}));
