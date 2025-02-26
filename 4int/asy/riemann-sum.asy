settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(360,110,IgnoreAspect);

real f(real x) {return 0.8*sin(x)+0.2x+0.6;}
pair F(real x) {return (x,f(x));}

dotfactor=7;

string[] labels={"$x_1$","$x_2$","$x_3$","$x_4$","$x_5$","$x_6$","$b=x_7$"};
string[] labelsb={"$x_1^*$","$x_2^*$","$x_3^*$","$x_4^*$","$x_5^*$","$x_6^*$","$x_7^*$"}; 

void subinterval(int i, real a, real b, real c)
{
  path g=box((a,0),(b,f(c)));
  filldraw(g,lightgray+opacity(0.5)); 
  draw(box((a,f(c)),(b,0)));
  dot((c,f(c)),heavygreen);
  xtick(Label(labels[i],align=S),b,S,red);
	if(i<7){xtick(Label(labelsb[i],align=N),c,heavygreen);}
}

real[] x={0.5,1.2,1.9,3.1,4,4.6,6.5,8};

subinterval(0,x[0],x[1],1);
subinterval(1,x[1],x[2],1.4);
subinterval(2,x[2],x[3],2.2);
subinterval(3,x[3],x[4],3.8);
subinterval(4,x[4],x[5],4.4);
subinterval(5,x[5],x[6],5.1);
subinterval(6,x[6],x[7],7.6);


draw(graph(f,0.25,8.5,operator ..),blue);

draw((0,0)--(8.5,0),red);
 
xaxis(Label("$x$"),0,8.5,red);
yaxis(Label("$f(x)$"),0,red,LeftTicks(new real[]{}));

xtick(Label("$a=x_0$",align=S),x[0],S,red);
xtick(Label("$b=x_7$",align=S),x[7],S,red);
