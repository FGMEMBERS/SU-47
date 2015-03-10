srand(); #set seed for random generator



#flame Rembrandt light brightness alternation
var flamePath = "sim/model/SU-47/";
props.globals.initNode(flamePath ~ "flameBright", 0.0, "DOUBLE");
var flameSeq = [0,0,0,0];
var curSeq = 0;
var flameBright = func {
	flameSeq[curSeq] = 0.5 + rand()*0.5;
	
	setprop(flamePath ~ "flameBright", 
		(flameSeq[0]+flameSeq[1]+flameSeq[2]+flameSeq[3]) / 4);
	
	if( curSeq < 3)
		curSeq += 1;
	else
		curSeq = 0;
		
	settimer(flameBright, 0.02);
}

settimer(flameBright, 0.02);







