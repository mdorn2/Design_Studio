randomize();

if(global.pause = false){
	image_speed = 1;
if(throwb = false){
	if(ide.follow = true){
		if(holding = false){
			x = ide.x;
			depth = -ide.y;
			sprite_index = spr_ufo_idle;
		}
	}
	else{
		speed = 0;
		if(move[0] = true){
			depth -= 3;
			if(holding = true){
				sprite_index = spr_ufo_idle_ball;
			}
			else{
				sprite_index = spr_ufo_idle;
			}
		}
		if(move[1] = true){
			depth += 3;
			sprite_index = run;
		}
		if(move[2] = true){
			x -= 3;
			sprite_index = run;
		}
		if(move[3] = true){
			x += 3;
			sprite_index = run;
		}
		if(move[4] = true){
			depth -= 1;
			x -= 1;
			sprite_index = run;

		}
		if(move[5] = true){
			depth -= 1;
			x += 1;
			sprite_index = run;
		}
		if(move[6] = true){
			depth += 1;
			x -= 1;
			sprite_index = run;
		}
		if(move[7] = true){
			depth += 1;
			x += 1;
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
				speed = 0;
				if(sprite_index = spr_ufo_idle){
					sprite_index = spr_ufo_idle_ball;
				}
				instance_destroy(instance_nearest(x,y,obj_ball));
			}
		}
	}
}

if(place_meeting(x,-depth,obj_shadow)){
	instance_destroy(instance_nearest(x,y,obj_ball_move_blue));
	instance_create_depth(x,0,depth,obj_ufo_death);
	instance_destroy();
}
if(place_meeting(x,-depth,obj_shadow_ai)){
	instance_destroy(instance_nearest(x,y,obj_ball_move_blue1));
	instance_create_depth(x,0,depth,obj_ufo_death);
	instance_destroy();
}
if(instance_exists(obj_shadow)){
	if(depth + obj_shadow.y < 10){
		catchb = choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
		if(catchb = 1){
			with(instance_nearest(x,y,obj_shadow).throwb){
				instance_destroy();
				instance_destroy(instance_nearest(x,y,obj_shadow));
			}
			if(instance_number(obj_ufo) < 4){
				instance_create_depth(room_width/2,0,-100,obj_ufo);
			}
			if(holding = true){
					instance_create_depth(x,0,depth,obj_ball);
				}
				else{
					holding = true;
					if(sprite_index = spr_ufo_idle){
						sprite_index = spr_ufo_idle_ball;
					}
				}
			instance_create_depth(x,y,0,obj_catch);
		}
	}
}
if(instance_exists(obj_shadow_ai)){
	if(depth + obj_shadow_ai.y < 10){
		catchb = choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
		if(catchb = 1){
			with(instance_nearest(x,y,obj_shadow_ai).throwb){
				instance_destroy();
				instance_destroy(instance_nearest(x,y,obj_shadow_ai));
			}
			if(instance_number(obj_ufo) < 4){
				instance_create_depth(room_width/2,0,-100,obj_ufo);
			}
			if(holding = true){
					instance_create_depth(x,0,depth,obj_ball);
				}
				else{
					holding = true;
					if(sprite_index = spr_ufo_idle){
						sprite_index = spr_ufo_idle_ball;
					}
				}
			instance_create_depth(x,y,0,obj_catch);
		}
	}
}
if(depth < -room_height/2){
	depth = -room_height/2;
}
if(depth > global.eback){
	depth = global.eback;
}
if(x < global.left){
	x = global.left;
}
if(x > global.right){
	x = global.right;
}
if(holding = true){
	run = spr_ufo_idle_ball;
}
else{
	run = spr_ufo_idle;
}
if(throwb = true){
	x += 0;
	y += 0;
	speed = 0;
}
}	
