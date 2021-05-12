image_index = 9;
image_speed = -6;
if(room == rm_match){
	if(!(global.a >= array_length_1d(global.team))){
		scr_next_match();
		audio_play_sound(ost_next,1,0);
	}
	else{
		instance_create_depth(room_width/2,room_height/2,-10,obj_fin);
		audio_play_sound(ost_end,1,0);
		image_speed = 0;
		image_index = 9;
		alarm[1] = 1200;
	}
}
if(global.select = -1){
	sprite_index = spr_vs;
	audio_play_sound(ost_next,1,0);
}
if(global.select = 0){
	sprite_index = spr_vs_ufo;
}
if(global.select = 1){
	sprite_index = spr_vs_ausi;
}
if(global.select = 2){
	sprite_index = spr_vs_zomb;
}
if(global.select = 3){
	sprite_index = spr_vs_socr;
}
if(global.select = 4){
	sprite_index = spr_vs_sink;
}
if(global.select = 5){
	sprite_index = spr_vs_tall;
}
