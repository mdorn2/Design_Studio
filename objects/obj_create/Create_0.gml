name = "";
global.name = "";
abv = "";
global.abv = "";
global.color = 1;
namesave = false;
abvsave = false;
keyboard_string = string_delete(keyboard_string,1,string_length(keyboard_string));
if(!audio_is_playing(ost_menu) ){
	audio_play_sound(ost_menu,1,1);
}