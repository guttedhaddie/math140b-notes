settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,120,IgnoreAspect);

real f(real x){return cos(x);}

real a=pi/4;
real b=3*pi;
real L=1/2;

draw(graph(f,-pi/2,pi/4),blue+dashed);
draw(graph(f,pi/4,3pi),blue);
draw(graph(f,3pi,7pi/2),blue+dashed);

xaxis("$x$",-pi/2,7pi/2,red);
yaxis("$f(x)$",-1.2,1.2,red,LeftTicks(new real[]{-1,1}));
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$b$",align=S),b,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
dot((a,f(a)),blue);
dot((b,f(b)),blue);
ytick(Label("$L$",align=W),L,W,heavygreen);
draw((a,L)--(b,L),heavygreen+dashed);
dot((pi/3,L),heavygreen);
xtick(pi/3,N,heavygreen);
dot((5pi/3,L),heavygreen);
xtick(5pi/3,N,heavygreen);
dot((7pi/3,L),heavygreen);
xtick(7pi/3,N,heavygreen);

