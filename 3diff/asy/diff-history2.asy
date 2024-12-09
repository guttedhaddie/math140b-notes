settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(220,140,IgnoreAspect);


pair P=(1,1);
//pair Q=P+0.7dir(30);
pair Q=P;
pair R=P+2dir(60);
pair T=(R.x,Q.y);

path p=(0,0)..P{dir(60)}..(2.2,1.5)..(3,0.5)..(3.5,1){NE};

draw(p,blue);
xaxis("$t$",0,3.5,red);
yaxis("$d$",0,red);
xtick(Label("$a$",align=S),1,S,heavygreen);


dot(P,heavygreen);

void secant(real t){
	path s=P+0.01dir(t)--P+2dir(t);
	pair SS=intersectionpoint(s,p);
	dot(SS,(1-t/30)*orange+(t/30)*heavygreen);
	draw(P--SS,(1-t/30)*orange+(t/30)*heavygreen);
	xtick(SS.x,S,(1-t/30)*orange+(t/30)*heavygreen);
	}
	
for(int n=0; n<=11; ++n){
	secant(5*n);
	}

draw(P--P+2dir(60),heavygreen);
labelx("$t$",2.48,2.5S,orange);

draw((2.2,-0.4)--(1.3,-0.4),Arrow);
