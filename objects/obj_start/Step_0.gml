if(keyboard_check_pressed(vk_space)){
	room_goto(rm_custom);
	audio_stop_sound(ost_intro);
}
if(!audio_is_playing(ost_intro)){
	room_goto(rm_custom);
}