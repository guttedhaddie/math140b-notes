settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,135,IgnoreAspect);

real f(real x){return 1+2x^2;}
real g(real x){return 2-x;}

path p=graph(f,0,0.99);
path q=graph(g,1,2);

draw(p,blue);
draw(q,blue);
dot((1,f(1)),blue,NoFill);
dot((1,g(1)),blue);

xaxis(0,2.3,red,RightTicks(new real[]{0,1,2,3}));
yaxis("$h(x)$",0,3.1,red,LeftTicks(new real[]{0,1,2,3}));
labelx("$x$",2.3,red);

real d=1-0.15;
xtick(Label("$x$",align=N),d,heavygreen);
draw((d,0.6)--(d,f(d))--(0,f(d)),heavygreen+dashed,Arrow(Relative(0.88)));
//ytick(Label("$h(x_n)$",align=E),f(1-0.1),heavygreen);