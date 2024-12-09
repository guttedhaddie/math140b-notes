settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

real f(real x){return 1/(x*(x-2));}

real r=0.2;
real M=f(-r);
real m=f(r);

//draw(graph(f,-2,-r),blue);
draw(reflect((0,0),(1,1))*graph(f,1,2-r),blue);
draw(reflect((0,0),(1,1))*graph(f,2+r,4),blue);
dot((f(1),1),blue);

yaxis("$f^{-1}(x)$",0,4,red,LeftTicks(new real[]{-1,1,2,3}));
xaxis("$x$",m,M,red,RightTicks(new real[]{-2,-1,0,1,2}));

real d=0.07;
dotfactor=10;
pen pen=heavygreen+linewidth(1.2);
//draw((-2,0)--(-d,0),pen);
dot((0,1),heavygreen);
draw((0,2-d)--(0,1),pen);
dot((0,2),heavygreen,NoFill);
draw((0,2+d)--(0,4),pen);

draw((d,0)--(M,0),brown+linewidth(1.2));
draw((-1,0)--(m,0),brown+linewidth(1.2));
dot((-1,0),brown);
dot((0,0),brown,NoFill);