if (!global.pause)
{
    global.pause = 1;
	if(instance_exists(obj_ally)){
		with(obj_ally){
			alarm[5] = 1;
		}
	}
	if(instance_exists(obj_enemy)){
		with(obj_enemy){
			alarm[5] = 1;
		}
	}
	if(instance_exists(obj_socr)){
		with(obj_socr){
			alarm[7] = 1;
		}
	}
	if(instance_exists(obj_vs)){
		with(obj_socr){
			alarm[2] = 1;
		}
	}
}
else
{
    global.pause = 0;
}