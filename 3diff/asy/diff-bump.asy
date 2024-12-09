settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,180,IgnoreAspect);

real a=1;
real ep=0.6;
real b=2;

real f(real x){return exp(-1/(x-a+ep))*exp(-1/(a+ep-x));}
real g(real x){return exp(-1/(x-b+ep))*exp(-1/(b+ep-x));}

draw((0,0)--(a-ep,0)..graph(f,a-0.99ep,a){E}..graph(g,b,b+0.99ep)--(b+ep,0)--(b+1,0),blue);

xaxis("$x$",0,b+1,red,RightTicks(new real[]{0}));
yaxis("$h_{a,b,\epsilon}(x)$",0,1.2f(a),red,LeftTicks(new real[]{0}));

xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$a-\epsilon$",align=S),a-ep,S,red);
xtick(Label("$b$",align=S),b,S,red);
xtick(Label("$b+\epsilon$",align=S),b+ep,S,red);
ytick(Label("$1$",align=W),f(a),W,red);
