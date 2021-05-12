depth += dspeed;
x += xspeed; 
if(z < -600){
	up = false	
}
if(up = true){
	z -= vsp*force;
}else{
	z += vsp*grav; 	
}
image_angle += 10;
if(z > 200){
	instance_destroy();
}