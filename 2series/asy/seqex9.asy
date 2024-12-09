settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

picture pic1;

int N=6;
for(int n=1; n<=N; ++n){
real f(real x){return (n/2)*x^2+1/(2*n);}
draw((-1,1)--graph(f,-1/n,1/n)--(1,1),(1.2N+1-n)/(1.2N)*blue+(n-1)/(1.2N)*heavygreen);
}
xaxis(-1.1,1.2,red,RightTicks(new real[]{-1,0,1}));
yaxis("$f_n(x)$",0,1.2,red,LeftTicks(new real[]{1}));
labelx("$x$",1.1,S,red);

//xtick(Label("$\frac 1n$",align=S),1/n,S,red);
//xtick(Label("$-\frac 1n$",align=S),-1/n,S,red);
draw((-1,1)--(0,0)--(1,1),heavygreen);