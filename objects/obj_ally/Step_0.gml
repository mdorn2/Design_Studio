randomize();
if(global.pause = false){
	image_speed = 1;
if(throwb = false){
	if(ide.follow = true){
		if(holding = false){
			x = ide.x;
			depth = -ide.y;
			sprite_index = run;
		}
	}
	else{
		speed = 0;
		if(move[0] = true){
			if(depth - 4.5 < global.aback){
				depth -= 0;
			}else{
				depth -= 4.5;
			}
			sprite_index = run;
		}
		if(move[1] = true){
			if(depth + 4.5 > -room_height/2){
				depth += 0;
			}else{
				depth += 4.5;
			}
			sprite_index = run;
		}
		if(move[2] = true){
			if(x - 4.5 < global.left){
				x -= 0;
			}else{
				x -= 4.5;
			}
			image_xscale = 1;
			sprite_index = run;
		}
		if(move[3] = true){
			if(x + 4.5 > global.right){
				x += 0;
			}else{
				x += 4.5;
			}
			image_xscale = -1;
			sprite_index = run;
		}
		if(move[4] = true){
			if(depth - 3 < global.aback){
				depth -= 0;
			}else{
				depth -= 3;
			}
			if(x - 3 < global.left){
				x -= 0;
			}else{
				x -= 3;
			}
			image_xscale = 1;
			sprite_index = run;
		}
		if(move[5] = true){
			if(depth - 3 < global.aback){
				depth -= 0;
			}else{
				depth -= 3;
			}
			if(x + 3 > global.right){
				x += 0;
			}else{
				x += 3;
			}
			image_xscale = -1;
			sprite_index = run;
		}
		if(move[6] = true){
			if(depth + 3 > -room_height/2){
				depth += 0;
			}else{
				depth += 3;
			}
			if(x - 3 < global.left){
				x -= 0;
			}else{
				x -= 3;
			}
			image_xscale = 1;
			sprite_index = run;
		}
		if(move[7] = true){
			if(depth + 3 > -room_height/2){
				depth += 0;
			}else{
				depth += 3;
			}
			if(x + 3 > global.right){
				x += 0;
			}else{
				x += 3;
			}
			image_xscale = -1;
			sprite_index = run;
		}
		if(move[8] = true){
			depth += 0;
			x += 0;
			if(holding = true){
			sprite_index = idleb;
		}
		else{
			sprite_index = idle;
		}
		}
	}
}
if(place_meeting(x,y,obj_ball)){
	if(instance_nearest(x,y,obj_ball).mind < depth){
		if(depth <= instance_nearest(x,y,obj_ball).maxd){
			if(holding = false){
				alarm[0] = 10;
				alarm[2] = 10;
				holding = true;
				ide.follow = false;
				audio_play_sound(snd_pickup,1,0);
				if(sprite_index = run){
					sprite_index = runb;
				}
				instance_destroy(instance_nearest(x,y,obj_ball));
			}
		}
	}
}

if(place_meeting(x,-depth,obj_shadow_red)){
		instance_destroy(instance_nearest(x,y,obj_ball_move_red));
		instance_destroy(instance_nearest(x,y,obj_shadow_red));
		instance_create_depth(x,0,depth,obj_p_death);
		instance_create_depth(x,0,depth,obj_ball);
		instance_destroy();
}
if(place_meeting(x,-depth,obj_shadow_red_ai)){
		instance_destroy(instance_nearest(x,y,obj_ball_move_red1));
		instance_destroy(instance_nearest(x,y,obj_shadow_red_ai));
		instance_create_depth(x,0,depth,obj_p_death);
		instance_create_depth(x,0,depth,obj_ball);
		instance_destroy();
}

if(distance_to_object(obj_ball_move_red) < 10){
	catchb = choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
	if(catchb = 1){
			with(instance_nearest(x,y,obj_shadow_red).throwb){
				instance_destroy();
				instance_destroy(instance_nearest(x,y,obj_ball_move_red));
			}
			if(holding = true){
					instance_create_depth(x,y,100,obj_ballt);
				}
				else{
					holding = true;
					ide.follow = false;
					if(sprite_index = run){
						sprite_index = runb;
					}
					if(sprite_index = idle){
						sprite_index = idleb;
					}
				}
			instance_create_depth(x,y,0,obj_catch);
	}
}


if(x < global.left){
	x = global.left;
}
if(x > global.right){
	x = global.right;
}
if(depth > (-room_height/2)){
	depth = (-room_height/2);
}
if(depth < (global.aback)){
	depth = (global.aback);
}
}
if(global.color = 1){
	run = spr_pblue_run;
	pthrow = spr_pblue_throw;
	idle = spr_pblue;
	idleb = spr_pblue_ball;
	runb = spr_pblue_runb;
}
if(global.color = 2){
	run = spr_po_run;
	pthrow = spr_po_throw;
	idle = spr_po_idle;
	idleb = spr_po_idleb;
	runb = spr_po_runb;
}
if(global.color = 3){
	run = spr_ppink_r;
	pthrow = spr_ppink_throw;
	idle = spr_ppink;
	idleb = spr_ppink_b;
	runb = spr_ppink_rb;
}
if(global.color = 4){
	run = spr_pp_run;
	pthrow = spr_pp_throw;
	idle = spr_pp;
	idleb = spr_pp_ball;
	runb = spr_pp_runb;
}
if(global.color = 5){
	run = spr_pred_run;
	pthrow = spr_pred_throw;
	idle = spr_pred;
	idleb = spr_pred_ball;
	runb = spr_pred_runb;
}
if(global.color = 6){
	run = spr_pwhite_run;
	pthrow = spr_pwhite_throw;
	idle = spr_pwhite;
	idleb = spr_pwhite_ball;
	runb = spr_pwhite_runb;
}
if(global.color = 7){
	run = spr_py_run;
	pthrow = spr_py_throw;
	idle = spr_py;
	idleb = spr_py_ball;
	runb = spr_py_runb;
}
if(global.color = 8){
	run = spr_prun;
	pthrow = spr_pthrow;
	idle = spr_player;
	idleb = spr_pidle_ball;
	runb = spr_prun;
}
if(global.color = 9){
	run = spr_pblack_run;
	pthrow = spr_pblack_throw;
	idle = spr_pblack;
	idleb = spr_pblack_ball;
	runb = spr_pblack_runb;
}
