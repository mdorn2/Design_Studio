randomize();
finx = 0;
finy = 0;
height = 0;
offset = random_range(-20,20);
if(instance_exists(obj_enemy)){
	finx = obj_enemy.x + offset;
	finy = obj_enemy.depth;
}
throwb = instance_nearest(x,-depth,obj_ally);
move_towards_point(finx,-finy,17);
