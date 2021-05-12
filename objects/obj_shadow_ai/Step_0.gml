move_bounce_solid(false);
if(!instance_exists(obj_enemy)){
	instance_destroy(instance_nearest(x,-y,obj_ball_move_blue1));
}
