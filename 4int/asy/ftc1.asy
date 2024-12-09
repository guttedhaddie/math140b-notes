settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(130,210,IgnoreAspect);

picture litF;
picture bigF;

real f(real x){if(x<=1){return 2x;} else{return 0.5;}}
real F(real x){if(x<=1){return x^2;} else{return 0.5(x+1);}}

draw(litF,graph(f,0,1),blue);
dot(litF,(1,f(1)),blue);
draw(litF,(1.03,0.5)--(2,0.5),blue);
dot(litF,(1,0.5),blue,NoFill);

xaxis(litF,"$x$",0,2.2,red,RightTicks(new real[]{0,1,2}));
yaxis(litF,"$f(x)$",0,2.2,red,LeftTicks(new real[]{0,1,2}));

draw(bigF,graph(F,0,1)--graph(F,1.1,2),blue);

xaxis(bigF,"$x$",0,2.2,red,RightTicks(new real[]{0,1,2}));
yaxis(bigF,"$F(x)$",0,1.8,red,LeftTicks(new real[]{0,1,2}));

add(litF);
add(shift((0,-2.8))*bigF);