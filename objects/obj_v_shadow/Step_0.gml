
x = ide.x;
y = -ide.depth;
if(y > room_height/2){
	y = room_height/2;
}
if(y < -global.eback){
	y = -global.eback;
}
if(x < 250){
	x = 250;
}
if(x > 700){
	x = 700;
}