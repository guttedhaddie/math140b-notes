settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

real x=40;

real sh=0.002;
draw("$\cos h$", (0,0)--(Cos(x),0),S,orange);
draw("$\sin h$", (Cos(x),0)--(Cos(x),Sin(x)),W,blue);
draw("$\tan h$", (1,0)--(1,Tan(x)),E,purple);
draw((Cos(x),Sin(x))--(1,Tan(x)));
//draw((1,0)--(1,Tan(x))--dir(x),purple);
draw("$1$", (0,0)--dir(x),dir(x+90));
real d=0.03;
draw((Cos(x)-d,0)--(Cos(x)-d,d)--(Cos(x),d));

draw("$h$",arc((0,0),0.1,0,x));
draw(Label("$h$",Relative(0.65)),arc((0,0),1,0,x),heavygreen);
draw(dir(x)--(1,0),dashed);
//draw(arc(dir(x),0.15,-90,-90+x/2));

draw((Cos(x),0)--(1,0),red);




