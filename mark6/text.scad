demo1();

module text(letter="#", size=10, depth=5){
if ((str(letter)=="a") || (str(letter)=="A")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,0],[50,100],[100,0],[80,0],[70,20],[30,20],[20,0],[40,40],[60,40],[50,50]] 
,paths = [
[0,1,2,3,4,5,6],[7,8,9]]
);
}
if ((str(letter)=="b") || (str(letter)=="B")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,0],[70,0],[100,10],[100,40],[80,50],[100,60],[100,90],[70,100],[0,100],[30,70],[80,70],[80,80],[30,80],[80,30],[30,30],[30,20],[80,20]] 
,paths = [
[0,1,2,3,4,5,6,7,8],[9,10,11,12],[13,14,15,16]]
);
}
if ((str(letter)=="c") || (str(letter)=="C")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[100,100],[100,70],[60,70],[30,60],[30,40],[60,30],[100,30],[100,0],[30,0],[0,10],[0,90],[30,100]]
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11]]
);
}
if ((str(letter)=="d") || (str(letter)=="D")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,0],[0,100],[80,100],[100,80],[100,20],[80,0],[70,80],[80,70],[80,30],[70,20],[20,20],[20,80]] 
,paths = [
[0,1,2,3,4,5],[6,7,8,9,10,11]]
);
}
if ((str(letter)=="e") || (str(letter)=="E")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[110,100],[20,100],[0,80],[0,20],[20,0],[110,0],[110,20],[30,20],[20,30],[20,40],[100,40],[100,60],[20,60],[20,70],[30,80],[110,80]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]
);
}
if ((str(letter)=="f") || (str(letter)=="F")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[100,100],[100,80],[30,80],[30,60],[100,60],[100,40],[30,40],[30,0],[0,0]]
,paths = [
[0,1,2,3,4,5,6,7,8,9]]
);
}
if ((str(letter)=="g") || (str(letter)=="G")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[100,100],[40,100],[10,90],[0,80],[0,20],[10,10],[40,0],[100,0],[100,50],[60,50],[60,40],[80,40],[80,20],[50,20],[20,30],[20,70],[50,80],[100,80]]
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]]
);
}
if ((str(letter)=="h") || (str(letter)=="H")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[0,0],[20,0],[20,40],[80,40],[80,0],[100,0],[100,100],[80,100],[80,60],[20,60],[20,100]]
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11]]
);
}
if ((str(letter)=="i") || (str(letter)=="I")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[20,0],[40,0],[40,100],[20,100]] 
,paths = [
[0,1,2,3]]
);
}
if ((str(letter)=="j") || (str(letter)=="J")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,0],[0,20],[30,20],[60,30],[60,100],[80,100],[80,20],[40,0]]
,paths = [
[0,1,2,3,4,5,6,7]]
);
}
if ((str(letter)=="k") || (str(letter)=="K")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[20,100],[20,60],[80,100],[100,100],[100,80],[50,50],[100,20],[100,0],[80,0],[20,40],[20,0],[0,0]]
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11,12]]
);
}
if ((str(letter)=="l") || (str(letter)=="L")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[20,100],[20,20],[100,20],[100,0],[0,0]]
,paths = [
[0,1,2,3,4,5]]
);
}
if ((str(letter)=="m") || (str(letter)=="M")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[30,100],[50,40],[70,100],[100,100],[100,0],[80,0],[80,70],[50,0],[20,70],[20,0],[0,0]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11]]
);
}
if ((str(letter)=="n") || (str(letter)=="N")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[30,100],[70,40],[70,100],[100,100],[100,0],[70,0],[30,60],[30,0],[0,0],[0,100]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9]]
);
}
if ((str(letter)=="o") || (str(letter)=="O")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,20],[20,0],[80,0],[100,20],[100,80],[80,100],[20,100],[0,80],[20,70],[30,80],[70,80],[80,70],[80,30],[70,20],[30,20],[20,30]] 
,paths = [
[0,1,2,3,4,5,6,7],[8,9,10,11,12,13,14,15]]
);
}
if ((str(letter)=="p") || (str(letter)=="P")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,0],[0,100],[50,100],[90,90],[100,80],[100,60],[90,50],[50,40],[30,40],[30,0],[30,80],[30,60],[50,60],[70,70],[50,80]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9],[10,11,12,13,14]]
);
}
if ((str(letter)=="q") || (str(letter)=="Q")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[10,90],[40,100],[60,100],[90,90],[100,80],[100,30],[90,20],[100,0],[80,0],[70,10],[40,10],[10,20],[0,30],[0,80],[40,80],[30,70],[30,40],[40,30],[60,30],[70,40],[70,70],[60,80]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11,12,13],[14,15,16,17,18,19,20,21]]
);
}
if ((str(letter)=="r") || (str(letter)=="R")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,0],[0,100],[60,100],[90,90],[100,80],[100,60],[90,50],[60,40],[100,0],[70,0],[30,40],[30,0],[30,60],[30,80],[60,80],[70,70],[60,60]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11],[12,13,14,15,16]]
);
}
if ((str(letter)=="s") || (str(letter)=="S")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,0],[80,0],[100,20],[100,40],[20,70],[20,80],[100,80],[100,100],[20,100],[0,80],[0,60],[80,30],[80,20],[0,20]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11,12,13]]
);
}
if ((str(letter)=="t") || (str(letter)=="T")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,90],[10,100],[90,100],[100,90],[100,80],[60,80],[60,0],[40,0],[40,80],[0,80]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9]]
);
}
if ((str(letter)=="u") || (str(letter)=="U")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[20,0],[0,20],[0,100],[20,100],[20,30],[30,20],[80,20],[90,30],[90,100],[110,100],[110,20],[90,0]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11]]
);
}
if ((str(letter)=="v") || (str(letter)=="V")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[40,0],[60,0],[100,100],[70,100],[50,30],[30,100]] 
,paths = [
[0,1,2,3,4,5,6]]
);
}
if ((str(letter)=="w") || (str(letter)=="W")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[10,0],[40,0],[50,30],[60,0],[90,0],[100,100],[80,100],[70,30],[50,60],[30,30],[20,100]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11]]
);
}
if ((str(letter)=="x") || (str(letter)=="X")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[30,50],[0,0],[30,0],[50,30],[70,0],[100,0],[70,50],[100,100],[70,100],[50,70],[30,100]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11]]
);
}
if ((str(letter)=="y") || (str(letter)=="Y")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,100],[40,50],[40,0],[60,0],[60,50],[100,100],[70,100],[50,70],[30,100]] 
,paths = [
[0,1,2,3,4,5,6,7,8]]
);
}
if ((str(letter)=="z") || (str(letter)=="Z")){
scale([(1/100)*size,(1/100)*size,depth/2]) 
linear_extrude( height = depth/2, center=false, convexity = 10, twist = 0, $fn = 10) 
polygon(points = [[0,90],[10,100],[100,100],[100,70],[30,30],[100,30],[100,10],[90,0],[10,0],[0,10],[0,40],[60,70],[0,70]] 
,paths = [
[0,1,2,3,4,5,6,7,8,9,10,11,12]]
);
}
}

module alphabet(){
translate([0,0,0])
text("a",10,3);
translate([25,0,0])
text("b",10,3);
translate([50,0,0])
text("c",10,3);
translate([75,0,0])
text("d",10,3);
translate([100,0,0])
text("e",10,3);
translate([125,0,0])
text("f",10,3);
translate([150,0,0])
text("g",10,3);
translate([175,0,0])
text("h",10,3);
translate([200,0,0])
text("i",10,3);
translate([225,0,0])
text("j",10,3);
translate([250,0,0])
text("k",10,3);
translate([275,0,0])
text("l",10,3);
translate([300,0,0])
text("m",10,3);
translate([325,0,0])
text("n",10,3);
translate([350,0,0])
text("o",10,3);
translate([375,0,0])
text("p",10,3);
translate([400,0,0])
text("q",10,3);
translate([425,0,0])
text("r",10,3);
translate([450,0,0])
text("s",10,3);
translate([475,0,0])
text("t",10,3);
translate([500,0,0])
text("u",10,3);
translate([525,0,0])
text("v",10,3);
translate([550,0,0])
text("w",10,3);
translate([575,0,0])
text("x",10,3);
translate([600,0,0])
text("y",10,3);
translate([625,0,0])
text("z",10,3);
}

module demo1(){
translate([-600,-10,-2])
color([.6,.5,.5])
cube(size=[1300,250,2]);
translate([0,50,0])
color([1,1,1])
alphabet();
translate([-290,25,0])
color([1,1,1])
alphabet();
translate([-560,0,0])
color([1,1,1])
alphabet();
color([1,1,1])
translate([10,200,0])
text("y",30,3);
color([1,1,1])
translate([40,200,0])
text("o",30,3);
color([1,1,1])
translate([70,200,0])
text("u",30,3);

color([1,1,1])
translate([130,200,0])
text("r",30,3);
color([1,1,1])
translate([160,200,0])
text("e",30,3);
color([1,1,1])
translate([190,200,0])
text("a",30,3);
color([1,1,1])
translate([220,200,0])
text("d",30,3);

color([1,1,1])
translate([0,150,0])
text("t",30,3);
color([1,1,1])
translate([30,150,0])
text("h",30,3);
color([1,1,1])
translate([60,150,0])
text("i",30,3);
color([1,1,1])
translate([90,150,0])
text("s",30,3);

color([1,1,1])
translate([150,150,0])
text("t",30,3);
color([1,1,1])
translate([180,150,0])
text("e",30,3);
color([1,1,1])
translate([210,150,0])
text("x",30,3);
color([1,1,1])
translate([240,150,0])
text("t",30,3);
}

