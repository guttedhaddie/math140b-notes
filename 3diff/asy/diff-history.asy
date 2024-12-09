settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(220,140,IgnoreAspect);

pair P=(1,1);
//pair Q=P+0.7dir(30);
pair Q=P;
pair R=P+2dir(60);
pair T=(R.x,Q.y);

path p=(0,0)..P{dir(60)}..(2.2,1.5)..(3,0.5)..(3.5,1){NE};

draw(p,blue);
xaxis("$t$",0,3.5,red);
yaxis("$d$",0,red);
xtick(Label("$a$",align=S),1,S,heavygreen);

dot(P,heavygreen);
draw(P--P+2dir(60),heavygreen);
draw("$\Delta t$",Q--T,heavygreen+dashed);
draw("$\Delta d$",T--R,heavygreen+dashed);
draw(T-(0.1,0)--T+(-0.1,0.1)--T+(0,0.1),heavygreen);

label("$v=\frac{\Delta d}{\Delta t}$",R--Q,heavygreen);
