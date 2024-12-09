settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

real N=15;
for(int n=1; n<=N; ++n){
	real f(real x){return x^n;}
	draw(graph(f,0,1),(1.2N+1-n)/(1.2N)*blue+(n-1)/(1.2N)*heavygreen);
	}
	
dotfactor=10;

dot((0,0),heavygreen,NoFill);
dot((1,0),heavygreen,NoFill);
dot((1,1),blue,NoFill);
draw((0.02,0)--(1-0.02,0),heavygreen+linewidth(1));
	
xaxis(0,1.2,red,RightTicks(new real[]{0,1}));
yaxis("$f_n(x)$",0,1.1,red,LeftTicks(new real[]{0,1}));
labelx("$x$",1.2,S,red);

label(rotate(-30,(0,0))*scale(0.6)*"$\cdots$",(0.93,0.05),heavygreen);

