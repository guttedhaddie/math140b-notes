settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,130,IgnoreAspect);

real f(real t){return 4-(t-2)^2;}

real a=1.2;
real d=0.3;
path p=graph(f,a,a+d)--(a+d,0)--(a,0)--cycle;
fill(p,blue+opacity(0.5));

draw(graph(f,0,1.8),blue);

xaxis(0,1.8,red);
yaxis(0,4,red);

label("$\Delta F$",(a+d/2,0.5*f(a+d/2)));
label("$\Delta x$",(a+d/2,-0.2));

xtick(Label("$x$",align=S),a,S,red);
xtick(a+d,S);
ytick(Label("$f(x)$",align=W),f(a),W,red);
