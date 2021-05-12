if(place_meeting(x,y,obj_mouse1)){
	image_index = 1;
	if(mouse_check_button_pressed(mb_left)){
		audio_stop_all();
		room_goto(room2); 
	}
}
else{
	image_index = 0;
}