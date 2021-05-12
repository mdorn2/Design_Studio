if(global.time = 0){
	instance_create_depth(x,y,0,obj_tall);
	instance_destroy();
}
if(z < 99){
	z += 6;
}else{
	z = 99;
}
