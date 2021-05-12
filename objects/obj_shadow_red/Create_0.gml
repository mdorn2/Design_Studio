
randomize();
finx = 0;
finy = 0;
height = 0;
offset = random_range(-global.accuracy,global.accuracy);
if(instance_exists(obj_player)){
	finx = obj_player.x + offset;
	finy = obj_player.depth;
}
else{
	if(instance_exists(obj_ally)){
		finx = obj_ally.x + offset;
		finy = obj_ally.depth;
	}
}
throwb = instance_nearest(x,-depth,obj_enemy);
move_towards_point(finx,-finy,17);
depth = 0;

