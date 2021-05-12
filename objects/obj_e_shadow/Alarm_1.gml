if(instance_exists(obj_ball)){
	if(instance_nearest(x,y,obj_ball).depth > -(room_height/2)){
		ball = obj_ball;
	}
}
else{
	alarm[1] = 1;
}