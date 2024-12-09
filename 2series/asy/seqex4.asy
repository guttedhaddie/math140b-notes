settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);

path c=box((-1,0),(3,2.2));

real N=8;
for(int n=1; n<=N; ++n){
	real f(real x){return 1/(1+x^(2n));}
	draw(graph(f,-1,3,operator ..),(1.2N+1-n)/(1.2N)*blue+(n-1)/(1.2N)*heavygreen);
	}
for(int n=1; n<=N; ++n){
	real f(real x){return 1/(1+x^(2n-1));}
	draw(graph(f,-0.9,3),(1.2N+1-n)/(1.2N)*blue+(n-1)/(1.2N)*heavygreen);
	clip(c);
	}
	
//dotfactor=10;

dot((1,0),heavygreen,NoFill);
dot((-1,1),heavygreen,NoFill);
dot((1,1),heavygreen,NoFill);
dot((1,1/2),heavygreen);
draw((-0.96,1)--(1-0.04,1),heavygreen+linewidth(1));
draw((1+0.04,0)--(3,0),heavygreen+linewidth(1));
	
xaxis(-1,3.2,red,RightTicks(new real[]{-1,0,1,2,3}));
yaxis("$f_n(x)$",0,red,LeftTicks(new real[]{1,2}));
labelx("$x$",3.2,S,red);

//label(rotate(-30,(0,0))*scale(0.6)*"$\cdots$",(0.93,0.05),heavygreen);

