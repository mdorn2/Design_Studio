randomize();
fx = random_range(130,1830);
fy = random_range(0,100);
if (distance_to_point(fx,fy)<150){
	height = distance_to_point(fx,fy)/10;
}
else{
	height = 15;
	finx = (fx + ((x+150) - fx));
	finy = fy;
	if (fx < x){
		height = 15;
		finx = (fx - (fx - (x-150)));
		finy = fy;
	}
} 
alarm[0] = 60;
jump = true;