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

path G0=graph(g0,0,1,4^0,operator --);
path GG0=reflect((0,0),(0,1))*G0;
draw(shift((-2,0))*G0--reverse(GG0)--G0--shift((2,0))*reverse(GG0),heavygreen+linewidth(0.5));

path G1=graph(g1,0,1,4^1,operator --);
path GG1=reflect((0,0),(0,1))*G1;
draw(shift((-2,0))*G1--reverse(GG1)--G1--shift((2,0))*reverse(GG1),0.75*heavygreen+0.25*blue+linewidth(0.4));

path G2=graph(g2,0,1,4^2,operator --);
path GG2=reflect((0,0),(0,1))*G2;
draw(shift((-2,0))*G2--reverse(GG2)--G2--shift((2,0))*reverse(GG2),0.5*heavygreen+0.5*blue+linewidth(0.3));

path G3=graph(g3,0,1,4^3,operator --);
path GG3=reflect((0,0),(0,1))*G3;
draw(shift((-2,0))*G3--reverse(GG3)--G3--shift((2,0))*reverse(GG3),0.25*heavygreen+0.75*blue+linewidth(0.2));


xaxis(-2.1,2.1,red,RightTicks(new real[]{-2,-1,0,1,2}));
yaxis(0,red,LeftTicks(new real[]{1,2,3}));
//labelx("$x$",2.1,SE,red);
//labely("$g(x)$",2.6,W,red);
