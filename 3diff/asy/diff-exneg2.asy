settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,0);

real f(real x){return x^(-1);}
real g(real x){return -x^(-2);}

path c=box((-2.2,-2.5),(2.2,2.5));

draw(graph(f,0.1,2.2),blue+linewidth(1));
draw(graph(f,-2.2,-0.1),blue+linewidth(1));
draw(graph(g,0.1,2.2),heavygreen+linewidth(1));
draw(graph(g,-2.2,-0.1),heavygreen+linewidth(1));
clip(c);

xaxis("$x$",-2.2,2.2,red,RightTicks(new real[]{-2,-1,1,2}));
yaxis("$y$",-2.5,2.5,red,LeftTicks(new real[]{-3,-2,-1,1,2,3}));

//label("$f(x)=x^{-2}$",(0,-2),blue);
//label("$f'(x)=-2x^{-3}$",(0,-2.4),heavygreen);
