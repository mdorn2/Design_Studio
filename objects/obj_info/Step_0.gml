if(place_meeting(x,y,obj_mouse1)){
	image_index = 1;
	if(mouse_check_button_pressed(mb_left)){
		room_goto(rm_info);
	}
} 
else{
	image_index = 0;
}