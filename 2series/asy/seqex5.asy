settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(100,105,IgnoreAspect);

int n=1;
real f(real x){return n*x^n*(1-x);}
draw(graph(f,0,1),blue);
xaxis(0,1.2,red,RightTicks(new real[]{0,1}));
yaxis(0,0.4,red,LeftTicks(new real[]{0}));
labelx("$x$",1.2,S,red);
ytick(Label("$e^{-1}$",align=W),exp(-1),W,red);
pair p=(n/(n+1),f(n/(n+1)));
dot(p,heavygreen);
ytick(p.y,W,heavygreen);
xtick(p.x,S,heavygreen);

label("$y=f_1(x)$",(0.5,-0.08),S,red);

