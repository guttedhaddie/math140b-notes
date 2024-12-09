settings.prc=false;
settings.outformat="";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(220);

real f(real x){return 0.5-abs(x-0.5);}
//real f(real x){if(x<0.5){return 2x;} else{return 1;}}
//real f(real x){if(x<0.5){return 2x;} if(x<0.75){return 2-2x;} else{return 1/2;}}
pair F(real x){return (x,f(x));}

real g(real x, int k, int n){return f(k/n)*choose(n,k)*x^k*(1-x)^(n-k);}

real bbern(int n, real x){
real b;
for(int j=0; j<=n; ++j){
	b=b+g(x,j,n);
	}
return b;
}


void bez2(pair A, pair B, pair C, real t){
	pair AB=(1-t)*A+t*B;
	pair BC=(1-t)*B+t*C;
	pair bez=(1-t)*AB+t*BC;
	draw(AB--BC,dashed+orange);
	//draw(A--B,dashed);
	//draw(B--C,dashed);
	dot("$A$",A,NW);
	dot("$B$",B,NW);
	dot("$C$",C,NE);
	dot("$\overrightarrow{AB}(t)$",AB,NW,orange);
	dot("$\overrightarrow{BC}(t)$",BC,NE,orange);
	dot(bez,blue);
}


real bern(real x){return bbern(2,x);}
path fff=graph(bern,0,1,operator--);
path ff=graph(f,0,1,operator--);


	draw(ff,heavygreen);
	bez2(F(0),F(0.5),F(1), 4/10);
	pair AB(real t){return (1-t)*F(0)+t*F(0.5);}
	pair BC(real t){return (1-t)*F(0.5)+t*F(1);}
	draw(AB(0.42)--AB(0.55),orange,Arrow);
	draw(BC(0.42)--BC(0.55),orange,Arrow);
	draw(fff,blue,Arrow(Relative(0.5)));
	xaxis("$x$",0,1,red,RightTicks(new real[]{0,1}));
	yaxis("$y$",0,0.6,red,LeftTicks(new real[]{0}));
	ytick(Label("$\frac 12$",align=W),1/2,W,red);





