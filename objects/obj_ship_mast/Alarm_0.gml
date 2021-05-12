if(x != room_width/2){
	instance_create_depth(x+250 ,-depth,depth,obj_wood);
	instance_create_depth(x+150 ,-depth,depth + 10,obj_wood);
	instance_create_depth(x+250 ,-depth,depth,obj_wood);
	instance_create_depth(x+150 ,-depth,depth + 10,obj_wood);
	alarm[0] = 10;
}