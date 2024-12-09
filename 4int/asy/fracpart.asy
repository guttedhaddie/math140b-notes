settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150,80);

path l=(0,0)--0.95*(1,1);
for(int i=0; i<=4; ++i){
	draw(shift((i,0))*l,blue);
	dot((i,0),blue);
	dot((i+1,1),blue,NoFill);
}

xaxis(0,5.2,red,RightTicks);
yaxis(0,red,LeftTicks(new real[]{0,1}));


