settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,110,IgnoreAspect);

real k=0.8;
real c=1;
real a=1;
real b=6;

real f(real x) {return k*x+c;}
pair F(real x) {return (x,f(x));}

dotfactor=5;

void subinterval(real a, real b, real c)
{
  path g=box((a,0),(b,f(c)));
  filldraw(g,lightgray+opacity(0.5)); 
  draw(box((a,f(c)),(b,0)));
  dot((c,f(c)),heavygreen);
}

int n=10;
for(int i=1; i<=n; ++i){
	subinterval(a+((b-a)*(i-1)/n),a+(b-a)*(i/n),a+(b-a)*(i/n));
	}

draw(graph(f,0,b+0.2,operator ..),blue);

draw((0,0)--(b,0),red);

string[] labels={"$x_0$","$x_1$","$x_2$","$x_3$","$x_4$","$x_5$","$x_6$","$x_7$","$x_8$"}; 
xaxis(0,b+0.5,red);

for(int i=1; i<=n-1; ++i){
	//xtick(Label(labels[i],align=S),g(i/n),S,red);
	xtick(a+(b-a)*i/n,S,red);
	}

xtick(Label("$b$",align=S),b,S,red);
xtick(Label("$a$",align=S),a,S,red);

yaxis(0,red,LeftTicks(new real[]{0}));
ytick(Label("$c$",align=W),c,W,red);
ytick(Label("$ak+c$",align=W),a*k+c,W,red);
ytick(Label("$bk+c$",align=W),b*k+c,W,red);

label("$U(f,P_n)$",(2a,a+4c));
