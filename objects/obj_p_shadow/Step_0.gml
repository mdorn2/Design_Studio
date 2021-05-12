if(distance_to_point(finx,-find) < 9){
	move_towards_point(finx, -find, 0);
	if(follow = true){
		alarm[0] = 1;
		alarm[1] = 60;
	}
	follow = false;
}
if(start = false){
	if(ball = obj_ball){
		follow = true;
		move_towards_point(ball.x, -ball.depth, 4.5);
		if(distance_to_point(ball.x,-ball.depth) < 0.1){
			if(follow = true){
				alarm[0] = 1;
			}
			follow = false;
			ball = ide;
		}
	}
	if(ball = ide){
		follow = false;
		move_towards_point(ide.x, -ide.depth, 5);
	}
}
if(x < global.left){
	x = global.left;
}
if(x > global.right){
	x = global.right;
}
if(y < (room_height/2)){
	y = (room_height/2);
}
if(y > (-global.aback)){
	y = (-global.aback);
}