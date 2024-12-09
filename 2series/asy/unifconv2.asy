settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

real ep=0.5;

path p=(0,0)--(1,0);

int N=7;
real X=0.5^(1/(N+1));
real f(real x){return x^(N+1);}
path pp=graph(f,0.02,0.998);

path pplus=shift((0,ep))*p;
path pminus=shift((0,-ep))*p;

path sh=pplus--reverse(pminus)--cycle;
fill(sh,0.2*heavygreen+0.8*white);
draw(p,heavygreen);
draw(pplus,heavygreen+dashed);
draw(pminus,heavygreen+dashed);

draw(pp,blue);
dotfactor=8;
dot((0,0),heavygreen,NoFill);
dot((1,0),heavygreen,NoFill);
dot((1,1),blue,NoFill);

xaxis(0,red,RightTicks(new real[]{1}));
yaxis(-1.1ep,1,red,LeftTicks(new real[]{0,1}));
draw((0,-ep)--(0,ep),red);

ytick(Label("$\epsilon$",align=W),ep,W,heavygreen);
ytick(Label("$-\epsilon$",align=W),-ep,W,heavygreen);
xtick(Label("$x$",align=S),X,S,blue);
dot((X,f(X)),blue);

