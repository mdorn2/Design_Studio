if(instance_exists(ball)){
	if(ide.holding = false && ide.throwb = false){
		finx = instance_nearest(x,-y,ball).x;
		find = instance_nearest(x,-y,ball).depth;
		if(abs(y - -(instance_nearest(x,-y,ball).depth)) < dist){
			if(abs(x - instance_nearest(x,-y,ball).x) < dist){
				follow = true;
				move_towards_point(finx, -find, 1);
				if(distance_to_point(finx,-find) < 1){
					x = finx;
					y = -find;
					speed = 0;
					follow = false;
					move_towards_point(finx, -find, 0);
				}
			}
		}
		else{
			follow = false;
		}
	}
}
else{
	follow = false;
}
if(follow = false){
	speed = 0;
	x = ide.x;
	y = -ide.depth;
	move_towards_point(finx, -find, 0);
}
if(y > room_height/2){
	y = room_height/2;
}
if(y < -global.eback){
	y = -global.eback;
}
if(x < global.left){
	x = global.left;
}
if(x > global.right){
	x = global.right;
}
