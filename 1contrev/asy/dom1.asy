settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150,110,IgnoreAspect);

real f(real x){return 1/(x*(x-2));}

real r=0.2;
real M=f(-r);
real m=f(r);

draw(graph(f,-2,-r),blue);
draw(graph(f,r,2-r),blue);
draw(graph(f,2+r,4),blue);

xaxis("$x$",-2,4,red,RightTicks(new real[]{-1,1,2,3}));
yaxis("$f(x)$",m,M,red,LeftTicks(new real[]{-2,-1,1,2}));

real d=0.07;
dotfactor=10;
pen pen=heavygreen+linewidth(1.2);
draw((-2,0)--(-d,0),pen);
dot((0,0),heavygreen,NoFill);
draw((2-d,0)--(d,0),pen);
dot((2,0),heavygreen,NoFill);
draw((2+d,0)--(4,0),pen);

draw((0,d)--(0,M),brown+linewidth(1.2));
draw((0,-1)--(0,m),brown+linewidth(1.2));
dot((0,-1),brown);