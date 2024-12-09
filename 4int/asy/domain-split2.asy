settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150,100,IgnoreAspect);

real f(real x) {return 0.5x+0.5sin(x);}
pair F(real x) {return (x,f(x));}

real a=0.5, b=6, c=4;

path p=graph(f,a,b,operator ..);
path pp=graph(f,a,c,operator ..)--(c,0)--(a,0)--cycle;
path qq=graph(f,c,b,operator ..)--(b,0)--(c,0)--cycle;
fill(pp,lightgray);
fill(qq,lightblue);
draw(pp,linewidth(0.1)+opacity(0.5));
draw(qq,linewidth(0.1)+opacity(0.5));
xaxis(0,6.5,red);
xtick((a,0),S,red);
labelx(a,"$a$",red);
xtick((c,0),S,red);
labelx(c,"$c$",red);
xtick((b,0),S,red);
labelx(b,"$b$",red);
labelx(6.5,"$x$",red);
yaxis(Label("$f(x)$"),0,f(b),red,NoTicks);
draw((b,0)--(0,0),red);
draw(p,blue);
real m=(a+c)/2;
real M=(b+c)/2;

srand(5);

//Choose mesh size
real mesh=0.9;

real x[]={a};
xtick(x[0],heavygreen);
while(max(x)<c){
	real xx=min(c,max(x)+mesh*unitrand());
	xtick(xx,heavygreen);
	x.push(xx);
}

xtick(c,orange+heavygreen);

real x[]={c};
while(max(x)<b){
	real xx=min(b,max(x)+mesh*unitrand());
	xtick(xx,orange);
	x.push(xx);
}

label("$\overbrace{\rule{69pt}{0pt}}^R$",(a/2+c/2,0.65),heavygreen);
label("$\overbrace{\rule{39pt}{0pt}}^S$",(b/2+c/2,0.65),orange);