settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150,85,IgnoreAspect);

real ep=0.2;

path p=(0.5,0.3){dir(20)}..(1.5,1.2)..(2.5,0.8){dir(-5)};
path pp=(0.5,0.4){dir(0)}..(1.5,1.15)..(2.5,0.95){dir(0)};

path pplus=shift((0,ep))*p;
path pminus=shift((0,-ep))*p;

path sh=pplus--reverse(pminus)--cycle;
fill(sh,0.2*heavygreen+0.8*white);
draw(p,heavygreen);
draw(pplus,heavygreen+dashed);
draw(pminus,heavygreen+dashed);

draw(pp,blue);

draw("$2\epsilon$",(0.4,0.3+ep)--(0.4,0.3-ep),heavygreen,Arrows);

xaxis(0,red);
yaxis(0,red);

label("$f(x)$",(2.5,0.75),E,heavygreen);
label("$f_n(x)$",(2.5,1),E,blue);
