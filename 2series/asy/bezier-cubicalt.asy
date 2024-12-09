settings.prc=false;
settings.outformat="";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animate;

size(220,180,IgnoreAspect);

pair BB(pair A,pair B,real t){return (1-t)*A+t*B;}

void bez3(pair A, pair B, pair C, pair D, real t){
	pair AB=BB(A,B,t);
	pair BC=BB(B,C,t);
	pair CD=BB(C,D,t);
	pair ABBC=BB(AB,BC,t);
	pair BCCD=BB(BC,CD,t);
	pair bez=BB(ABBC,BCCD,t);
	draw(A--B--C--D,dashed+heavygreen);
	draw(AB--BC--CD,dashed+orange);
	draw(ABBC--BCCD,dashed+purple);
	dot("$A$",A,S);
	dot("$B$",B,S);
	dot("$C$",C,W);
	dot("$D$",D,S);
	dot(AB,orange);
	dot(BC,orange);
	dot(CD,orange);
	dot(ABBC,purple);
	dot(BCCD,purple);
	dot(bez,blue);
}

animation A;

real f(real x){return 0.5-abs(x-0.5);}
real f(real x){if(x<0.5){return 2x;} else{return 1;}}
real f(real x){if(x<1/3){return 3x;} if(x<2/3){return 1;} else{return 5/3-x;}}
//real f(real x){return sin(2pi*x);}
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
	dot(A);
	dot(B);
	dot(C);
	dot(AB,orange);
	dot(BC,orange);
	dot(bez,blue);
}

pair AA=(0,0);
pair B=(1,0);
pair C=(0.5,2);
pair D=(2,1);
pair bern(real t){return (1-t)^3*AA+3*t*(1-t)^2*B+3*t^2*(1-t)*C+t^3*D;}

path pbern=graph(bern,0,1,operator--);

/*
save();
bez3(AA,B,C,D, 6/10);
	draw(pbern);
	A.add();
restore();
*/

for(int N=0; N<=50; ++N){
	save();
	bez3(AA,B,C,D, N/50);
	//draw(pbern,blue);
	draw(graph(bern,0,1),blue+dotted);
	draw(graph(bern,0,N/50),blue);
	A.add();
	restore();
}
label(A.pdf(multipage=false),fontsize(5));

//draw(fff,blue);

//bez2(F(0),F(0.5),F(1), 0.4);


//for(int m=1; m<=5; ++m){
	//int n=10m;
	//real bern(real x){return bbern(n,x);}
	//draw(graph(bern,0,1,operator--),blue);
	//}




//draw(graph(f,0,1,operator--),heavygreen);
//draw(graph(bern,0,1,operator--),heavygreen+linewidth(1.5));







