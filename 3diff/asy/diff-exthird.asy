settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,0);

real f(real x){return x^(1/3);}
real g(real x){return (1/3)*x^(-2/3);}

path c=box((-2.2,-3.8),(2.2,2.9));

path F=(0,0){N}..graph(f,0.01,2.2);
path G=graph(g,0.01,2.2);

draw(rotate(180,(0,0))*reverse(F)--F,purple);
draw(G,orange);
draw(reflect((0,0),(0,1))*G,orange);
clip(c);

xaxis("$x$",-2.2,2.2,red,RightTicks(new real[]{-2,-1,1,2}));
yaxis("$y$",-1.4,2.9,red,LeftTicks(new real[]{-3,-2,-1,1,2,3}));

//label("$g(x)=x^{1/3}$",(0,-1.7),blue);
//label("$g'(x)=\frac 13x^{-2/3}$",(0,-2.2),heavygreen);
