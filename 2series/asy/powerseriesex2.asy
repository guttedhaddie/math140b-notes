settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

real f(real x){return -log(1-x);}

real d=0.03;
real e=0.05;

draw(graph(f,-3.4,1-d),heavygreen+linewidth(2));
draw(graph(f,-1+e,1-d),blue+linewidth(1));

dotfactor=8;

dot((-1,f(-1)),blue);

xaxis("$x$",-3.4,1.2,red,RightTicks(new real[]{-3,-2,-1,1}));
yaxis("$y$",red,LeftTicks(new real[]{-1,1,2,3}));

label("$y=\sum\limits_{n=0}^\infty\frac 1nx^n$",(-2,2.7),blue);
label("$y=-\ln(1-x)$",(-2,2),heavygreen);
