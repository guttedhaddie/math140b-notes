settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(250,40,IgnoreAspect);

xaxis(-3.6,1,red,RightTicks(new real[]{-2,0}));
draw(Label("$x$",align=2S,Relative(0.7)),(1,0)--(1.6,0),red,Arrow);

label("$f'(x)>0$",(-3,1/4),red);
label("$f'(x)<0$",(-1,1/4),red);
label("$f'(x)>0$",(1,1/4),red);
