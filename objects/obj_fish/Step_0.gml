randomize();
speed = 0;
if(global.pause = false){
	image_speed = 1;
	x = ide.x;
	depth = -ide.y;
if(place_meeting(x,y,obj_ball)){
	if(instance_nearest(x,y,obj_ball).mind < depth){
		if(depth <= instance_nearest(x,y,obj_ball).maxd){
			choice = choose(1,2);
			if(choice = 1){
				instance_create_depth(x,-depth,0,obj_shadow_red);
				instance_create_depth(x,0,depth,obj_ball_move_red);
				instance_destroy(instance_nearest(x,y,obj_ball));
			}	
			if(choice = 2){
				instance_create_depth(x,-depth,0,obj_shadow_red_ai);
				instance_create_depth(x,0,depth,obj_ball_move_red1);
				instance_destroy(instance_nearest(x,y,obj_ball));
			}
		}
	}
}
if(place_meeting(x,-depth,obj_shadow)){
	instance_destroy(instance_nearest(x,y,obj_ball_move_blue));
	instance_create_depth(x,y,depth,obj_fish_death);
	instance_destroy();
}
if(place_meeting(x,y,obj_shadow_ai)){
	instance_destroy(instance_nearest(x,y,obj_ball_move_blue1));
	instance_create_depth(x,y,depth,obj_fish_death);
	instance_destroy();
}
if(instance_exists(obj_shadow)){
	if(depth + obj_shadow.y < 10){
		catchb = choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
		if(catchb = 1){
			with(instance_nearest(x,y,obj_shadow).throwb){
				instance_destroy(instance_nearest(x,y,obj_shadow));
			}
			instance_create_depth(x,y,100,obj_shadow_red);
		}
	}
}
if(instance_exists(obj_shadow_ai)){
	if(depth + obj_shadow_ai.y < 10){
		catchb = choose(0,0,0,0,0,0,0,0,0,0,0,0,1);
		if(catchb = 1){
			with(instance_nearest(x,y,obj_shadow_ai).throwb){
				instance_destroy(instance_nearest(x,y,obj_shadow_ai));
			}
			instance_create_depth(x,y,100,obj_shadow_red_ai);
		}
	}
}
if(depth < -room_height/2){
	depth = -room_height/2;
}
if(depth > -100){
	depth = -100;
}
if(x < 130){
	x = 130;
}
if(x > 1830){
	x = 1830;
}
}

	