settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(165,100,IgnoreAspect);

real f(real x) {return (x-1)*(x-2)*(x-4)+4;}
pair F(real x) {return (x,f(x));}

real m=(7+sqrt(7))/3;
real M=(7-sqrt(7))/3;

dotfactor=7;

void subinterval(real a, real b, real c)
{
  path g=box((a,0),(b,f(c)));
  filldraw(g,lightgray+opacity(0.5)); 
  draw(box((a,f(c)),(b,0)));
  dot((c,f(c)),heavygreen);
}

real x[]={0.5,0.9,1.3,2,2.5,2.9,3.6,4,4.5};
draw(graph(f,0.5,4.5,operator ..),blue);

subinterval(x[0],x[1],x[0]);
subinterval(x[1],x[2],x[1]);
subinterval(x[2],x[3],x[3]);
subinterval(x[3],x[4],x[4]);
subinterval(x[4],x[5],x[5]);
subinterval(x[5],x[6],m);
subinterval(x[6],x[7],x[6]);
subinterval(x[7],x[8],x[7]);


draw((0,0)--(5,0),red);

string[] labels={"$a$","$x_1$","$x_2$","$x_3$","$x_4$","$x_5$","$x_6$","$x_7$","$b$"}; 
xaxis(0,5,red);

for(int i=0; i<=8; ++i){
	xtick(Label(labels[i],align=S),x[i],S,red);
	}

yaxis(0,red,LeftTicks(new real[]{}));

//label("$L(f,P)$",(2,7));
