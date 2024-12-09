settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170,90,IgnoreAspect);

real f(real x){return x^(2/3)*exp(x/3);}
real g(real x){return x^(2/3)*exp(-x/3);}

draw(graph(f,0,1),blue);
path p=graph(g,0,3.9);
draw(reflect((0,0),(0,1))*p,blue);

xaxis(-3.9,1.3,red,RightTicks(new real[]{-3,-2,-1,0,1}));
yaxis("$f(x)$",0,red,LeftTicks(new real[]{1}));

labelx("$x$",1.3,S,red);

dotfactor=7;
dot((-2,g(2)),heavygreen);
dot((0,0),heavygreen);
