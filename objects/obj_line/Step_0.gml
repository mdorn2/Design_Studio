if(obj_create.namesave = false){
	image_index = string_length(obj_create.name);
}
else{
	image_index = 15;
} 
if(place_meeting(x,y,obj_mouse1)){
	if(mouse_check_button_pressed(mb_left)){
		obj_create.namesave = false;
		obj_create.abvsave = true;
		keyboard_string = obj_create.name;
	}
}