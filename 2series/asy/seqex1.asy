settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(440,140);

picture pic1;

real f(real x){return x;}
draw(pic1,graph(f,0,1),blue);
xaxis(pic1,0,1.2,red,RightTicks(new real[]{0,1}));
yaxis(pic1,"$f_1(x)$",0,1.2,red,LeftTicks(new real[]{0,1}));
labelx(pic1,"$x$",1.2,S,red);


picture pic2;

real f(real x){return x^2;}
draw(pic2,graph(f,0,1),blue);
xaxis(pic2,0,1.2,red,RightTicks(new real[]{0,1}));
yaxis(pic2,"$f_2(x)$",0,1.2,red,LeftTicks(new real[]{0,1}));
labelx(pic2,"$x$",1.2,S,red);

picture pic3;

real f(real x){return x^5;}
draw(pic3,graph(f,0,1),blue);
xaxis(pic3,0,1.2,red,RightTicks(new real[]{0,1}));
yaxis(pic3,"$f_5(x)$",0,1.2,red,LeftTicks(new real[]{0,1}));
labelx(pic3,"$x$",1.2,S,red);

picture pic4;

real f(real x){return x^50;}
draw(pic4,graph(f,0,1),blue);
xaxis(pic4,0,1.2,red,RightTicks(new real[]{0,1}));
yaxis(pic4,"$f_{50}(x)$",0,1.2,red,LeftTicks(new real[]{0,1}));
labelx(pic4,"$x$",1.2,S,red);

add(pic1);
add(shift((1.9*1,0))*pic2);
add(shift((1.9*2,0))*pic3);
add(shift((1.9*3,0))*pic4);