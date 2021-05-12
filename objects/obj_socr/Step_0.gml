randomize();

if(global.pause = false){
	image_speed = 1;
if(throwb = false){
	if(flop = false){
		if(ide.follow = true){
			if(holding = false){
				x = ide.x;
				depth = -ide.y;
				sprite_index = spr_soc_run;
			}
	}
		else{
			speed = 0;
			if(move[0] = true){
				depth -= 4;
				if(holding = true){
					sprite_index = spr_soc_rball;
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
				depth -= 1.25;
				x -= 1.25;
				image_xscale = -1;
				sprite_index = run;

			}
			if(move[5] = true){
				depth -= 1.25;
				x += 1.25;
				image_xscale = 1;
				sprite_index = run;
			}
			if(move[6] = true){
				depth += 1.25;
				x -= 1.25;
				image_xscale = -1;
				sprite_index = run;
			}
			if(move[7] = true){
				depth += 1.25;
				x += 1.25;
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
					speed = 0;
					if(sprite_index = spr_soc_run){
						sprite_index = spr_soc_rball;
					}
					if(sprite_index = spr_soc_idle){
						sprite_index = spr_soc_iball;
					}
					instance_destroy(instance_nearest(x,y,obj_ball));
				}
			}
		}
	}
	if(place_meeting(x,-depth,obj_shadow)){
		instance_destroy(instance_nearest(x,y,obj_ball_move_blue));
		instance_create_depth(x,0,depth,obj_soc_death);
		instance_destroy();
	}
	if(place_meeting(x,-depth,obj_shadow_ai)){
			instance_destroy(instance_nearest(x,y,obj_ball_move_blue1));
			instance_create_depth(x,0,depth,obj_soc_death);
			instance_destroy();
	}
}
if(instance_exists(obj_shadow)){
	if(depth - obj_shadow.y < -50){
		catchb = choose(1);
		if(catchb = 1){
			alarm[5] = 5;
		}
	}
}
if(instance_exists(obj_shadow_ai)){
	if(depth - obj_shadow_ai.y < -75){
		catchb = choose(1);
		if(catchb = 1){
			alarm[5] = 5;
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
	run = spr_soc_rball;
}
else{
	run = spr_soc_run;
}
if(throwb = true){
	x += 0;
	y += 0;
	speed = 0;
}

}
