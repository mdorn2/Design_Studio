depth = -y;
image_speed = 0;
if(y = 400){
	image_index = 1;
	audio_play_sound(snd_land,1,0);
}
if(y > 400){
	image_index = 0;
	audio_play_sound(snd_land,1,0);
}
if(y < 400 && y > 300){
	image_index = 2;
}
if(y < 300){
	image_index = 3;
}