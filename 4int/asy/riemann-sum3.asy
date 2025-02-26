settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,110,IgnoreAspect);

real f(real x) {return 0.8*sin(x)+0.2x+0.6;}
pair F(real x) {return (x,f(x));}

dotfactor=5;

string[] labels={"$x_1$","$x_2$","$x_3$","$x_4$","$x_5$","$x_6$","$b=x_7$"};

void subinterval(int i, real a, real b, real c)
{
  path g=box((a,0),(b,f(c)));
  filldraw(g,lightgray+opacity(0.5)); 
  draw(box((a,f(c)),(b,0)));
  //dot((c,f(c)),heavygreen);
	//if(i<4){xtick(Label(labelsb[i],align=N),c,heavygreen);}
}

real[] x={0.5,1.9,3.1,6.5,8};

//subinterval(0,x[0],x[1],x[0]);
subinterval(1,x[1],x[2],x[2]);
subinterval(2,x[2],x[3],pi+acos(0.25));
subinterval(3,x[3],x[4],x[3]);


xtick(x[1],S,red);
xtick(Label("$x_{k-1}$",align=S),x[2],S,red);
xtick(Label("$x_{k}$",align=S),x[3],S,red);
xtick(x[4],S,red);

real t=5.5;
draw(box((x[2],0),(t,f(pi+acos(0.25)))),heavygreen);
draw(box((t,0),(x[3],f(t))),heavygreen);
filldraw(box((t,f(pi+acos(0.25))),(x[3],f(t))),heavygreen);

xtick(Label("$t$",align=S),t,S,heavygreen);

label("Extra area!", (1.1x[2],2.1),heavygreen);

draw((1.35x[2],1.8)--(0.95t,1.3),heavygreen,Arrow);

label("$\cdots$", (1,0.6));
label("$\cdots$", (9,0.6));

draw(graph(f,0.25,9.5,operator ..),blue);

dot((t,f(t)),heavygreen);
dot((pi+acos(0.25),f(pi+acos(0.25))),heavygreen);

draw((0,0)--(9.5,0),red);
 
xaxis(0,8.5,red);
yaxis(0,red,LeftTicks(new real[]{}));

ytick(Label("$m_1$",align=W),f(pi+acos(0.25)),W,red);
ytick(Label("$m_2$",align=W),f(t),W,red);
