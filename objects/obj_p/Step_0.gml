image_xscale = -1;
if(instance_exists(obj_player)){
	x = obj_player.x;
	depth = obj_player.depth;
}
else{
	instance_destroy();
}