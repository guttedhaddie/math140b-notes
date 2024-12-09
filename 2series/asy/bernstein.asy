settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(125,90,IgnoreAspect);

real f(real x){return 0.5-abs(x-0.5);}
real f(real x){if(x<0.5){return 2x;} else{return 1;}}
//real f(real x){if(x<0.5){return 2x;} if(x<0.75){return 2-2x;} else{return 1/2;}}
real g(real x, int k, int n){return f(k/n)*choose(n,k)*x^k*(1-x)^(n-k);}


real bbern(int n, real x){
//real x=0.2;
//int n=2;
real b;
for(int j=0; j<=n; ++j){
	b=b+g(x,j,n);
	}
return b;
}


for(int m=1; m<=2; ++m){
	int n=2m;
	real bern(real x){return bbern(n,x);}
	draw(graph(bern,0,1,operator--),blue);
	}
	

real bern(real x){return bbern(50,x);}
draw(graph(bern,0,1,operator--),blue);




draw(graph(f,0,1,operator--),heavygreen);
//draw(graph(bern,0,1,operator--),heavygreen+linewidth(1.5));

xaxis(0,1,red,RightTicks(new real[]{0,1}));
yaxis(0,1.1,red,LeftTicks(new real[]{0,1}));





