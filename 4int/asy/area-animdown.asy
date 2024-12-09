//Use Inline option

if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


import animate;

size(175);

real f(real x) {return x^3;}
pair F(real x) {return (x,f(x));}

dotfactor=4;

void subinterval(real a, real b)
{
  path g=box((a,0),(b,f(a)));
  fill(g,lightgray+opacity(0.5)); 
  draw(box((a,f(a)),(b,0)),linewidth(0.1)+opacity(0.5));
}

int a=0, b=1;

animation A;

//save();
path p=graph(f,a,b,operator ..);
path q=F(b)--(b,0)--(a,0)--F(a);
path r=p--q--cycle;
//fill(r,lightgray);
//draw(q,black);
//draw(p,blue);
//xaxis(Label("$x$"),0,red,RightTicks(new real[]{0,1}));
//yaxis(Label("$y$"),0,f(1),red,LeftTicks(new real[]{0,1}));
//draw((b,0)--(0,0)--(0,f(1)),red);
//label("$y=x^2$",(0,0.9),E);
//draw(p,blue);
//label("(click)",(b/2,-.2),fontsize(8));
//  A.add();
//restore();

int n=10;
for(int j=2; j <= n; ++j) {
save();
int m=2^j;
for(int i=1; i <= m; ++i) {
  subinterval(a+(i-1)*(b-a)/m,a+i*(b-a)/m);
  dot(F(a+(i-1)*(b-a)/m));}
draw(p,blue);
xaxis(0,red,RightTicks(new real[]{0,1}));
yaxis(0,f(1),red,LeftTicks(new real[]{0,1}));
draw((b,0)--(0,0)--(0,f(1)),red);
//label("$y=x^2$",(0,0.9),E);
label("$n=$",(.3,0.7),W);
label(string(m),(.27,0.705),E);
label("$L_n=$",(0.45,-.18),W);
label(substr(string(1/3-((3*m-1)/(6m^2))),0,8),(0.43,-.18),E);
  A.add();
  restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));
