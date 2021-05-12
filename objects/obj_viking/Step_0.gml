randomize();

if(global.pause = false){
	image_speed = 1;
if(throwb = false){
	speed = 0;
	if(move[0] = true){
		x -= 0;
		sprite_index = spr_viking_idle;
	} 
	if(move[2] = true){
		x -= 4.5;
		image_xscale = -1;
		sprite_index = run;
	}
	if(move[3] = true){
		x += 4.5;
		image_xscale = 1;
		sprite_index = run;
	}
}


if(place_meeting(x,-depth,obj_shadow)){
		instance_destroy(instance_nearest(x,y,obj_ball_move_blue));
		instance_destroy(instance_nearest(x,y,obj_shadow));
		instance_destroy();
}
if(place_meeting(x,-depth,obj_shadow_ai)){
		instance_destroy(instance_nearest(x,y,obj_ball_move_blue1));
		instance_destroy(instance_nearest(x,y,obj_shadow_ai));   
		instance_destroy();
}


if(distance_to_object(obj_ball_move_blue) < 10){
	catchb = choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
	if(catchb = 1){
		with(instance_nearest(x,-depth,obj_ball_move_blue).throwb){
			instance_destroy();
			instance_destroy(instance_nearest(x,-depth,obj_ball_move_blue));
		}
		if(instance_number(obj_enemy) < 4){
			instance_create_depth(room_width/2,280,100,obj_enemy);
		}
		if(holding = true){
				instance_create_depth(x,-depth,100,obj_balls);
			}
			else{
				holding = true;
				if(sprite_index = spr_ncsu_run){
					sprite_index = spr_ncsu_run_ball;
				}
				if(sprite_index = spr_other){
					sprite_index = spr_ncsu_idle_ball;
				}
			}
		instance_create_depth(x,y,0,obj_catch);
	}
}
 
if(throwb = true){
	x += 0;
	depth += 0;
	speed = 0;
}
}	
if(depth < -room_height/2){
	depth = -room_height/2;
}
if(depth > global.eback){
	depth = global.eback;
}
if(x < 300){
	x = 300;
}
if(x > 700){
	x = 700;
}