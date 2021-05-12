move_bounce_solid(false);
if(!instance_exists(obj_ally) && !instance_exists(obj_player)){
	instance_destroy(instance_nearest(x,-y,obj_ball_move_red));
}
