if(instance_exists(obj_ally)){
	with(instance_nearest(x,y,obj_ally)){
		instance_create_depth(x,y,0,obj_player);
		instance_destroy();
	}
}
instance_destroy(obj_p_shadow1);
instance_create_depth(x,y,100,obj_ball);