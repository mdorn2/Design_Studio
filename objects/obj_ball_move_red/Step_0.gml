depth = -instance_nearest(x,-depth,obj_shadow_red).y
x = instance_nearest(x,-depth,obj_shadow_red).x;
z += (z*grav)-force;
if(z >= 105 && bounce != 0){
	z = 104;
	grav *= -1;
	bounce -= 1;
}
if(z <= 65 && bounce != 3){
	z = 66;
	grav *= -1;
	bounce -= 1;
}
if(bounce < 0){
	instance_destroy();	
}