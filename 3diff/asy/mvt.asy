settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(400,130,IgnoreAspect);

picture rolle;
picture mvt;

real a=0.15;
real b=1;
real d=4*(b-a)^3/27;
real c=(2b+a)/3;
real g(real x){return 0.9*(1/d)*(x-a)^2*(b-x)+0.1;}
real m=0.3;
real f(real x){return 0.7(1/d)*(x-a)^2*(b-x)+0.02+m*x;}

draw(rolle,graph(g,a,b),blue);
xaxis(rolle,"$x$",0,b+0.2,red);
yaxis(rolle,"$g(x)$",0,1.1,red);
xtick(rolle,Label("$a$",align=S),a,S,red);
xtick(rolle,Label("$b$",align=S),b,S,red);
xtick(rolle,Label("$\xi$",align=S),c,S,heavygreen);
draw(rolle,(c-0.4,g(c))--(c+0.4,g(c)),heavygreen+dashed);
dot(rolle,(c,g(c)),heavygreen);
draw(rolle,(a,g(a))--(b,g(b)),orange+dashed);
dot(rolle,(a,g(a)),blue);
dot(rolle,(b,g(b)),blue);
label(rolle,"Critical Points/Rolle's Theorem",((b+a)/2,-0.5));

draw(mvt,graph(f,a,b),blue);
xaxis(mvt,"$x$",0,b+0.2,red);
yaxis(mvt,"$f(x)$",0,1.1,red);
xtick(mvt,Label("$a$",align=S),a,S,red);
xtick(mvt,Label("$b$",align=S),b,S,red);
xtick(mvt,Label("$\xi$",align=S),c,S,heavygreen);
draw(mvt,(c-0.4,f(c)-0.4m)--(c+0.4,f(c)+0.4m),heavygreen+dashed);
draw(mvt,(a,f(a))--(b,f(b)),orange+dashed);
dot(mvt,(c,f(c)),heavygreen);
dot(mvt,(a,f(a)),blue);
dot(mvt,(b,f(b)),blue);
label(mvt,"Mean Value Theorem",((b+a)/2,-0.5));


add(rolle);
add(shift((1.5,0))*mvt);

//label("$f(x)=x^{-2}$",(0,-2),blue);
//label("$f'(x)=-2x^{-3}$",(0,-2.4),heavygreen);
