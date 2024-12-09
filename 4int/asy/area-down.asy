settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(147,0);

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


path p=graph(f,a,b,operator ..);
path q=F(b)--(b,0)--(a,0)--F(a);
path r=p--q--cycle;


int m=2^4;
for(int i=1; i <= m; ++i) {
  subinterval(a+(i-1)*(b-a)/m,a+i*(b-a)/m);
  dot(F(a+(i-1)*(b-a)/m));}
draw(p,blue);
xaxis(0,red,RightTicks(new real[]{0,1}));
yaxis(0,f(1),red,LeftTicks(new real[]{0,1}));
draw((b,0)--(0,0)--(0,f(1)),red);
label("$n=$",(.3,0.7),W);
label(string(m),(.27,0.705),E);
label("$L_n=$",(0.45,-.12),W);
label(substr(string(1/3-((3*m-1)/(6m^2))),0,8),(0.43,-.12),E);
