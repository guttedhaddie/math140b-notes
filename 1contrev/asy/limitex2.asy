settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170,IgnoreAspect);

real f(real x){return (2+x)/x;}

draw(graph(f,2/9,2.5),blue);

draw(graph(f,-2.5,-2/11),blue);

xaxis("$x$",-2.5,2.5,red,RightTicks(new real[]{-2,-1,1,2,3}));
yaxis("$f(x)$",-10,10,red,LeftTicks(new real[]{-9,-6,-3,3,6,9}));

for(int n=1; n<=50; ++n){
	xtick(1/n,N,heavygreen);
	xtick(-1/n,N,orange);
	}

ytick(f(1),heavygreen);
ytick(f(0.5),heavygreen);
ytick(f(1/3),heavygreen);
ytick(f(1/4),heavygreen);
ytick(f(-1),orange);
ytick(f(-0.5),orange);
ytick(f(-1/3),orange);
ytick(f(-1/4),orange);

label("$x_1$",(1,1.5),heavygreen);
label("$y_1$",(-1,1.5),orange);
label("$x_2$",(0.5,1.5),heavygreen);
label("$y_2$",(-0.5,1.5),orange);
draw((0.3,1.5)--(0.05,1.5),heavygreen,Arrow);
draw((-0.3,1.5)--(-0.05,1.5),orange,Arrow);
draw("$f(x_n)$",(0.5,6)--(0.5,10),heavygreen,Arrow);
draw("$f(y_n)$",(0.5,-4)--(0.5,-8),E,orange,Arrow);
