if(namesave = false){
	if(keyboard_check(vk_anykey)) {
		 alarm[0] = 1;  
	}
	if(string_length(name) > 14){
		name = string_copy(keyboard_string, 1, 14);
		keyboard_string = string_copy(keyboard_string, 1, 14);
	}
	if(keyboard_check_pressed(vk_enter)){
		global.name = name; 	
	}
	if(keyboard_check_released(vk_enter)){
		namesave = true;
		keyboard_string = string_delete(keyboard_string,1,string_length(keyboard_string));
	}
}
if(namesave = true){
	if(abvsave = false){
		if(keyboard_check(vk_anykey)) {
			 alarm[1] = 1;  
		}
		if(string_length(abv) > 4){
			abv = string_copy(keyboard_string, 1, 4);
			keyboard_string = string_copy(keyboard_string, 1, 4);
		}
		if(keyboard_check_pressed(vk_enter)){ 
			global.abv = abv; 
			abvsave = true;
		}
	}
}
if(abvsave = true){
	global.abv = abv; 
}

