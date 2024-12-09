settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);

real a=1;
real b=6.5;
real y=2.8;

path p=(0,0)..(1,1)..(3,3.7)..(4,2)..{NE}(6,3)..(7,3.8);
draw(p,blue);

draw((0,y)--(b,y),heavygreen+dashed);


xaxis("$x$",0,red);
yaxis(0,4,red);
ytick(Label("$L$",align=W),y,W,heavygreen);
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$b$",align=S),b,S,red);
pair fa=intersectionpoint(p,(a,0)--(a,5));
ytick(Label("$f(a)$",align=W),fa.y,W,red);
pair fb=intersectionpoint(p,(b,0)--(b,5));
ytick(Label("$f(b)$",align=W),fb.y,W,red);
draw((0,fa.y)--(b,fa.y),red+dashed);
draw((0,fb.y)--(b,fb.y),red+dashed);
draw((b,0)--(b,fb.y),red+dashed);
draw((a,0)--(a,fb.y),red+dashed);

pair[] ff=intersectionpoints(p,(0,y)--(b,y));
draw((a,0)--(ff[0].x,0),heavygreen+linewidth(2));
draw((ff[1].x,0)--(ff[2].x,0),heavygreen+linewidth(2));
xtick(Label("$\xi$",align=S),ff[2].x,S,heavygreen);

pair S=(3,0.7);
label("$S$",S,heavygreen);
pair sl(real t){return t*(a/2+ff[0].x/2,0)+(1-t)*S;}
pair sr(real t){return t*(ff[1].x/2+ff[2].x/2,0)+(1-t)*S;}
draw(sl(0.15)--sl(0.85),heavygreen,Arrow);
draw(sr(0.15)--sr(0.85),heavygreen,Arrow);
