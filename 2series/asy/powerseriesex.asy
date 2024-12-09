settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(220);

real f(real x){return 2/(x-2);}

real d=0.3;
real e=0.12;

draw(graph(f,-3,2-d),heavygreen+linewidth(2));
draw(graph(f,2+d,8),heavygreen+linewidth(2));
draw(graph(f,2+d,6-e),blue+linewidth(1));

dotfactor=8;

dot((6,f(6)),blue,NoFill);

xaxis("$x$",-3,8,red,RightTicks(new real[]{-2,2,4,6}));
yaxis("$y$",f(2-d),f(2+d),red,LeftTicks(new real[]{-6,-4,-2,2,4,6}));

label("Power Series",(4.2,-3),blue);
label("$f(x)=\frac 2{x-2}$",(4.2,-4.2),heavygreen);
