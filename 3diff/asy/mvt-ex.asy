settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,120,IgnoreAspect);

real f(real x){return x^4-14x^2+24x;}

draw(graph(f,0,2),blue);

xaxis(0,2.3,red,RightTicks(new real[]{0,1,2}));
yaxis("$g(x)$",0,11,red,LeftTicks(new real[]{0,5,10}));

labelx("$x$",2.3,S,red);

//label("$f(x)=x^{-2}$",(0,-2),blue);
//label("$f'(x)=-2x^{-3}$",(0,-2.4),heavygreen);
