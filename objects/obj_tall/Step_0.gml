 randomize();

if(global.pause = false){
	image_speed = 1;
if(throwb = false){
	if(ide.follow = true){
		if(holding = false){
			x = ide.x;
 			depth = -ide.y;
			sprite_index = spr_tall_run;
		}
	}
	else{
		speed = 0;
		if(move[0] = true){
			depth -= 4;
			if(holding = true){
				sprite_index = spr_tall_runb;
			}
			else{
				sprite_index = run;
			}
		}
		if(move[1] = true){
			depth += 4;
			sprite_index = run;
		}
		if(move[2] = true){
			x -= 4;
			image_xscale = -1;
			sprite_index = run;
		}
		if(move[3] = true){
			x += 4;
			image_xscale = 1;
			sprite_index = run;
		}
		if(move[4] = true){
			depth -= 3;
			x -= 3;
			image_xscale = -1;
			sprite_index = run;

		}
		if(move[5] = true){
			depth -= 3;
			x += 3;
			image_xscale = 1;
			sprite_index = run;
		}
		if(move[6] = true){
			depth += 3;
			x -= 3;
			image_xscale = -1;
			sprite_index = run;
		}
		if(move[7] = true){
			depth += 3;
			x += 3;
			image_xscale = 1;
			sprite_index = run;
		}
	}
}
if(place_meeting(x,y,obj_ball)){
	if(instance_nearest(x,y,obj_ball).mind < depth){
		if(depth <= instance_nearest(x,y,obj_ball).maxd){
			if(holding = false){
				alarm[0] = 10;
				alarm[2] = 1;
				holding = true;
				audio_play_sound(snd_pickup,1,0);
				if(sprite_index = spr_ncsu_run){
					sprite_index = spr_tall_runb;
				}
				if(sprite_index = spr_other){
					sprite_index = spr_tall_runb;
				}
				instance_destroy(instance_nearest(x,y,obj_ball));
			}
		}
	}
}


if(place_meeting(x,-depth,obj_shadow)){
		instance_destroy(instance_nearest(x,y,obj_ball_move_blue));
		instance_destroy(instance_nearest(x,y,obj_shadow));
		instance_create_depth(x,0,depth,obj_tall_dead);
		instance_destroy();
}
if(place_meeting(x,-depth,obj_shadow_ai)){
		instance_destroy(instance_nearest(x,y,obj_ball_move_blue1));
		instance_destroy(instance_nearest(x,y,obj_shadow_ai));
		instance_create_depth(x,0,depth,obj_tall_dead);
		instance_destroy();
}


if(distance_to_object(obj_ball_move_blue) < 10){
	catchb = choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
	if(catchb = 1){
		with(instance_nearest(x,y,obj_ball_move_blue).throwb){
			instance_destroy();
			instance_destroy(instance_nearest(x,y,obj_ball_move_blue));
		}
		if(instance_number(obj_enemy) < 4){
			instance_create_depth(room_width/2,280,100,obj_tall);
		}
		if(holding = true){
				instance_create_depth(x,y,100,obj_balls);
			}
			else{
				holding = true;
				if(sprite_index = spr_ncsu_run){
					sprite_index = spr_tall_runb;
				}
				if(sprite_index = spr_other){
					sprite_index = spr_tall_idleb;
				}
			}
		instance_create_depth(x,y,0,obj_catch);
	}
}

if(depth < -room_height/2){
	depth = -room_height/2;
}
if(depth > -271){
	depth = -271;
}
if(x < 70){
	x = 70;
}
if(x > 905){
	x = 905;
}
if(holding = true){
	run = spr_tall_runb;
}
else{
	run = spr_tall_run;
}
if(throwb = true){
	x += 0;
	depth += 0;
	speed = 0;
}
}	
