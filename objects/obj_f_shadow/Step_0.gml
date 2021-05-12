randomize();
speed = 0;
if(global.pause = false){
	image_speed = 1;
if(jump = true){
	if(distance_to_point(fx,fy)<point_distance(startx,starty,fx,fy)/2){
		height /= 0.9;
	}
	if(distance_to_point(fx,fy)>point_distance(startx,starty,fx,fy)/2){
		height *= 0.9;
	}
	if (distance_to_point(fx,fy)>0.1){
		move_towards_point(fx,fy,3);
		alarm[0] = 120;
	}
	if (distance_to_point(fx,fy)<0.1){
		x = fx;
		y = fy;
		move_towards_point(fx,fy,0);
	}
}


if(x < 130){
	x = 130;
}
if(x > 1830){
	x = 1830;
}
}

	