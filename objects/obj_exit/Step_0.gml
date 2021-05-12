if(place_meeting(x,y,obj_mouse1)){
	image_index = 1;
	if(mouse_check_button_pressed(mb_left)){
		room_goto(room2); 
		global.abv = obj_create.abv;
		global.name = obj_create.name;
	}
}
else{
	image_index = 0;
}