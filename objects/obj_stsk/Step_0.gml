if(global.time = 0){
	instance_create_depth(x,y,0,obj_sink);
	instance_destroy();
}
with(obj_water){
	visible = true;
}