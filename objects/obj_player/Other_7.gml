if(throwb = true){	
	throwb = false;
	instance_create_depth(x,-depth,0,obj_shadow);
	instance_create_depth(x,0,depth,obj_ball_move_blue);
	sprite_index = idle;
	image_index = 0;
}