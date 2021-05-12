if(throwb = true){
	sprite_index = idle;
	instance_create_depth(x,-depth,0,obj_shadow_ai);
	instance_create_depth(x,0,depth,obj_ball_move_blue1);
	alarm[0] = 1;
	throwb = false;
}