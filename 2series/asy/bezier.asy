settings.prc=false;
settings.outformat="";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animate;

size(220);

animation A;

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
	draw(A--B,dashed);
	draw(B--C,dashed);
	dot("$A$",A,NW);
	dot("$B$",B,NW);
	dot("$C$",C,NE);
	dot(AB,orange);
	dot(BC,orange);
	dot(bez,blue);
}


real bern(real x){return bbern(2,x);}
path fff=graph(bern,0,1,operator--);
path ff=graph(f,0,1,operator--);

/*
	save();
	bez2(F(0),F(0.5),F(1), 4/10);
	draw(fff,blue);
	draw(ff,heavygreen);
	xaxis("$x$",0,1,red,RightTicks(new real[]{0,1}));
	yaxis("$y$",0,0.6,red,LeftTicks(new real[]{0}));
	ytick(Label("$\frac 12$",align=W),1/2,W,red);
	A.add();
	restore();	
*/

for(int N=0; N<=50; ++N){
	save();
	bez2(F(0),F(0.5),F(1), N/50);
	//draw(fff,blue);
	draw(graph(bern,0,1),blue+dotted);
	draw(graph(bern,0,N/50),blue);
	draw(ff,heavygreen);
	xaxis("$x$",0,1,red,RightTicks(new real[]{0,1}));
	yaxis("$y$",0,0.6,red,LeftTicks(new real[]{0}));
	ytick(Label("$\frac 12$",align=W),1/2,W,red);
	A.add();
	restore();
}
label(A.pdf(multipage=false));

//A.movie(BBox(0.25cm),loops=10,delay=250);

//draw(fff,blue);

//bez2(F(0),F(0.5),F(1), 0.4);


//for(int m=1; m<=5; ++m){
	//int n=10m;
	//real bern(real x){return bbern(n,x);}
	//draw(graph(bern,0,1,operator--),blue);
	//}




//draw(graph(f,0,1,operator--),heavygreen);
//draw(graph(bern,0,1,operator--),heavygreen+linewidth(1.5));







