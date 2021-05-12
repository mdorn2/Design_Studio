var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
if(place_meeting(x,y,obj_mouse1)){
	image_index = 1;
	if(mouse_check_button_pressed(mb_left)){
		global.arrow += 1;
		layer_background_index(back_id,global.arrow);
	}
}
else{
	image_index = 0;
}