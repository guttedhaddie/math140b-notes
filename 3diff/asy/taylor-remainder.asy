settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,170,IgnoreAspect);

real f(real x){return 1/(1-x);}
real g(real x){return 1+x+x^2+x^3;}

draw(graph(f,-1,0.9),blue);
draw(graph(g,-1,1),heavygreen);

xaxis("$x$",-1,1,red,RightTicks(new real[]{-1,0,1}));
yaxis("$y$",0,red,LeftTicks(new real[]{2,4,6,8,10}));
xtick(Label("$\frac 12$",align=S),0.5,S,red);
xtick(Label("$-\frac 12$",align=S),-0.5,S,red);

label("$\textcolor{Green}{p_3(x)=1+x+x^2+x^3}$",(0,-3));
