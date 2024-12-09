settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);

real f(real x){return (x+1)/2;}
real i(real x){return abs(2((f(x))%1)-1);}

//draw(graph(i,-2,2,1000));

real g0(real x){return i(x);}
real g1(real x){return g0(x)+(0.75)^1*i(4x);}
real g2(real x){return g1(x)+(0.75)^2*i(4^2*x);}
real g3(real x){return g2(x)+(0.75)^3*i(4^3*x);}
real g4(real x){return g3(x)+(0.75)^4*i(4^4*x);}
real g5(real x){return g4(x)+(0.75)^5*i(4^5*x);}
real g6(real x){return g5(x)+(0.75)^6*i(4^6*x);}

path G6=graph(g6,0,1,4^6,operator --);
path GG6=reflect((0,0),(0,1))*G6;
draw(shift((-2,0))*G6--reverse(GG6)--G6--shift((2,0))*reverse(GG6),blue+linewidth(0.05));

xaxis(-2.1,2.1,red,RightTicks(new real[]{-2,-1,0,1,2}));
yaxis(0,red,LeftTicks(new real[]{1,2,3}));
//labelx("$x$",2.1,SE,red);
//labely("$g(x)$",2.6,W,red);
