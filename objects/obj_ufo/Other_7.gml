if(throwb = true){
	sprite_index = spr_ufo_idle;
	alarm[0] = 1;
	throwb = false;
	choice = choose(1,2);
	if(choice = 1){
		instance_create_depth(x+35,-depth,0,obj_shadow_red);
		instance_create_depth(x+35,0,depth,obj_ball_move_red);
		instance_create_depth(x-35,-depth,0,obj_shadow_red);
		instance_create_depth(x-35,0,depth,obj_ball_move_red);
	}	
	if(choice = 2){
		instance_create_depth(x+35,-depth,0,obj_shadow_red_ai);
		instance_create_depth(x+35,0,depth,obj_ball_move_red1);
		instance_create_depth(x-35,-depth,0,obj_shadow_red_ai);
		instance_create_depth(x-35,0,depth,obj_ball_move_red1);
	}
}