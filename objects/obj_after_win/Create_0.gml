image_speed = 4;
image_index = 0;
image_xscale = -1;
depth = -room_height/2;
audio_play_sound(ost_win,1,0);
audio_stop_sound(ost_battle);
global.point += 100;
if(global.a = 0){
	global.tut += 1;
}
global.hit = 1;
if((instance_number(obj_player) + instance_number(obj_ally)) >= 3){
	global.point += 10;
}
if((instance_number(obj_player) + instance_number(obj_ally)) = 1){
	global.point += 5;
}