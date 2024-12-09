settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140,95,IgnoreAspect);

real f(real x) {return 0.8*sin(x)+0.2x+0.6;}
pair F(real x) {return (x,f(x));}

dotfactor=5;

string[] labels={"$x_1$","$x_2$","$x_3$","$x_4$","$x_5$","$x_6$","$b=x_7$"};
string[] labelsb={"$x_1^*$","$x_2^*$","$x_3^*$","$x_4^*$","$x_5^*$","$x_6^*$","$x_7^*$"}; 

void subinterval(int i, real a, real b, real c)
{
  path g=box((a,0),(b,f(c)));
  filldraw(g,lightgray+opacity(0.5)); 
  draw(box((a,f(c)),(b,0)));
  dot((c,f(c)),heavygreen);
  xtick(Label(labels[i],align=S),b,S,red);
	//if(i<4){xtick(Label(labelsb[i],align=N),c,heavygreen);}
}

real[] x={0.5,1.9,3.1,6.5,8};

subinterval(0,x[0],x[1],x[0]);
subinterval(1,x[1],x[2],x[2]);
subinterval(2,x[2],x[3],pi+acos(0.25));
subinterval(3,x[3],x[4],x[3]);

real t=5.5;
draw(box((x[2],0),(t,f(pi+acos(0.25)))),heavygreen);
draw(box((t,0),(x[3],f(t))),heavygreen);
filldraw(box((t,f(pi+acos(0.25))),(x[3],f(t))),heavygreen);

xtick(Label("$t$",align=S),t,S,heavygreen);

label("Extra area!", (1.1x[2],2.1),heavygreen);
//label("$L(f,Q)\ge L(f,P)$", (1.1x[2],2.1));


draw(graph(f,0.25,8.5,operator ..),blue);

draw((0,0)--(8.5,0),red);
 
xaxis(0,8.5,red);
yaxis(0,red,LeftTicks(new real[]{}));

xtick(Label("$x_0$",align=S),x[0],S,red);
