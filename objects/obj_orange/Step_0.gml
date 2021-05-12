if(place_meeting(x,y,obj_mouse1)){
	if(image_index != 2){
		image_index = 1;
	}
	if(mouse_check_button_pressed(mb_left)){
		global.color = 2;
		image_index = 2;
	}
}
else{
	if(global.color != 2){
		image_index = 0;
	}
}