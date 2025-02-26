settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,110,IgnoreAspect);

real f(real x) {return sqrt(x);}
pair F(real x) {return (x,f(x));}

dotfactor=5;

void subinterval(real a, real b, real c)
{
  path g=box((a,0),(b,f(c)));
  filldraw(g,lightgray+opacity(0.5)); 
  draw(box((a,f(c)),(b,0)));
  dot((c,f(c)),heavygreen);
}

real b=9;

real g(real t){return b*t^2;}

int n=10;
for(int i=1; i<=n; ++i){
	subinterval(g((i-1)/n),g(i/n),g(i/n));
	}

draw(graph(f,0,b+0.2,operator ..),blue);

draw((0,0)--(b,0),red);

string[] labels={"$x_0$","$x_1$","$x_2$","$x_3$","$x_4$","$x_5$","$x_6$","$x_7$","$x_8$"}; 
xaxis(0,b+0.2,red,RightTicks(new real[]{0}));

for(int i=1; i<=n-1; ++i){
	//xtick(Label(labels[i],align=S),g(i/n),S,red);
	xtick(g(i/n),S,red);
	}

xtick(Label("$b$",align=S),b,S,red);

yaxis(0,red,LeftTicks(new real[]{0}));
ytick(Label("$\sqrt b$",align=W),f(b),W,red);

label("Upper Sum $U(f,P_n)$",(b/2,-1));
