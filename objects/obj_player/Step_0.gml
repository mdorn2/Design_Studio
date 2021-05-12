 if(global.pause = false){
	image_speed = 1;
if(throwb = false){
	if(keyboard_check(ord("W")) || gamepad_axis_value(0,gp_axislv) <  0){
		depth += 4.5;
		if(holding = false){
			sprite_index = run;
		}
		else{
			sprite_index = runb;
		}
	}
	if(keyboard_check(ord("S")) || gamepad_axis_value(0,gp_axislv) > 0){
		depth -= 4.5;
		if(holding = false){
			sprite_index = run;
		}
 		else{
			sprite_index = runb;
		}
	}
	if(keyboard_check(ord("A")) || gamepad_axis_value(0,gp_axislh) < 0){
		x += 4.5;
		image_xscale = -1;
		if(holding = false){
			sprite_index = run;
		}
		else{
			sprite_index = runb;
		}
	}
	if(keyboard_check(ord("D")) || gamepad_axis_value(0,gp_axislh) > 0){
		x -= 4.5;
		image_xscale = 1;
		if(holding = false){
			sprite_index = run;
		}
		else{
			sprite_index = runb;
		}
	}
	if(gamepad_axis_value(0,gp_axislh) = 0 && gamepad_axis_value(0,gp_axislv) = 0 && !keyboard_check(vk_anykey)){
		if(holding = false){
			sprite_index = idle;
		}
		else{
			sprite_index = idleb;
		}
	}
}
if(keyboard_check_pressed(vk_space)){
	if(catchb = true){
		if(distance_to_object(obj_ball_move_red) < 20){
				with(instance_nearest(x,y,obj_shadow_red).throwb){
					instance_destroy();
					instance_destroy(instance_nearest(x,y,obj_ball_move_red));
				}
				if(instance_number(obj_ally) < 3){
					instance_create_depth(room_width/2,700,100,obj_ally);
				}
				if(holding = true){
					instance_create_depth(x,y,100,obj_ballt);
				}
				else{
					holding = true;
				}
				global.point += 20;
				instance_create_depth(x,y,0,obj_catch);
		}
		catchb = false;
		alarm[0] = 240;
	}
}
if(place_meeting(x,y,obj_ball)){
	if(instance_nearest(x,y,obj_ball).mind < depth){
		if(depth <= instance_nearest(x,y,obj_ball).maxd){
			if(holding = false){
				instance_destroy(instance_nearest(x,y,obj_ball));
				holding = true;
				audio_play_sound(snd_pickup,1,0);
				if(sprite_index = run){
					sprite_index = runb;
				}
			}
		}
	}
}
if(place_meeting(x,y,obj_ballt)){
	if(holding = false){
		instance_destroy(instance_nearest(x,y,obj_ballt));
		holding = true;
		audio_play_sound(snd_pickup,1,0);
		if(sprite_index = run){
			sprite_index = runb;
		}
	}
}
if(mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0,gp_shoulderl)){
	if(holding = true){
		sprite_index = pthrow;
		image_index = 0;
		throwb = true;
		holding = false;
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


if(throwb = false){
	if(keyboard_check_released(vk_anykey)){
		if(holding = true){
			sprite_index = idleb;
		}
		else{
			sprite_index = idle;
		}
	}
}
}
if(global.pause = true){
	image_speed = 0;
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