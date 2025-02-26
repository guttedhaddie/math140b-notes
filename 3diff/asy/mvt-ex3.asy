settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(250,37,IgnoreAspect);

xaxis(-3.6,1.2,red,RightTicks(new real[]{-2,0}));
draw(Label("$x$",align=2S,Relative(0.7)),(1,0)--(1.8,0),red,Arrow);

label(scale(0.9)*"$f'(x)>0$",(-3,1/4),red);
label(scale(0.9)*"$f'(x)<0$",(-1,1/4),red);
label(scale(0.9)*"$f'(x)>0$",(1,1/4),red);
