randomize();
z = -100;
up = true;
xspeed = random_range(-5,5);
dspeed = random_range(-5,5);
grav = 0.99;
force = 0.99;
vsp = 10;
image_speed = 0;
image_index = random_range(0,2);
if(obj_ship.visible = false){
	instance_destroy();
}