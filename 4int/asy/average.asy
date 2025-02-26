settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,100,IgnoreAspect);

pair P(real t){return (t,t^4-(25/6)*t^2+t+7);}

real s=2.5;
real a=-2;
real b=1.5;
real av=(1/3.5)*(0.2*(1.5^5+2^5)-(25/18)*(1.5^3+2^3)+0.5*(1.5^2-2^2))+7;
path p=shift((s,0))*graph(P,a,b,join=operator..);
path pp=p--(b+s,0)--(a+s,0)--cycle;
path r=(a+s,av)--(b+s,av);
path rr=r--(b+s,0)--(a+s,0)--cycle;
fill(pp,0.5lightblue+0.5white);
fill(rr,0.5gray+0.5white);
draw((0,av)--(b+s,av),orange+dashed);
draw(p,blue);
draw((a+s,av)--(a+s,av),orange+dashed);

real q=3/4-0.25*sqrt(19/3);
dot(shift((s,0))*P(q),purple);
dot(shift((s,0))*P(-3/2),purple);

xaxis(0,1.3b+s,red);
yaxis(0,P(q).y+0.2,red);

ytick(Label("$f_{\text{av}}$",align=W),av,W,orange);
ytick(Label("$M$",align=W),P(q).y,W,purple);
ytick(Label("$m$",align=W),P(-1.5).y,W,purple);

pair[] XI=intersectionpoints(r,p);

dot(XI[0],heavygreen);
xtick(Label("$\xi$",align=S),XI[0].x,S,heavygreen);
xtick(Label("$a$",align=S),a+s,S,red);
xtick(Label("$b$",align=S),b+s,S,red);
xtick(Label("$p$",align=S),shift((s,0))*P(-3/2).x,S,purple);
xtick(Label("$q$",align=S),shift((s,0))*P(q).x,S,purple);