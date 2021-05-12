if(obj_create.namesave = true){
	if(obj_create.abvsave = false){
		image_index = string_length(obj_create.abv);
	}
}
else{
	image_index = 15;
}
if(place_meeting(x,y,obj_mouse1)){
	if(mouse_check_button_pressed(mb_left)){
		obj_create.namesave = true;
		obj_create.abvsave = false;
		keyboard_string = obj_create.abv;
	}
} 