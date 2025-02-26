settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,90,IgnoreAspect);

xaxis("$x$",-2.1,3.2,red,RightTicks(new real[]{-2,-1,1,2,3}));
yaxis("$g(x)$",-2.2,2.2,red,LeftTicks(new real[]{-2,-1,1,2}));

real r=0.05;
dotfactor=6;
void floorline(real x){
	draw((x,x)--(x+1-r,x),blue);
	dot((x,x),blue);
	dot((x+1,x),blue,NoFill);
}

for(int x=-2; x<=2; ++x){
	floorline(x);
}
floorline(1);
