c = 0;
if(place_meeting(x,y,obj_player)){
	c = obj_player;
}
if(place_meeting(x,y,obj_enemy)){
	c = instance_nearest(x,y,obj_enemy);
}
if(place_meeting(x,y,obj_ally)){
	c = instance_nearest(x,y,obj_ally);
}
alarm[0] = 120;