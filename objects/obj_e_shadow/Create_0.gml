depth = 0;
ide = instance_nearest(x,y,obj_enemy);
ball = obj_ball;
finx = instance_nearest(x,-y,ball).x;
find = instance_nearest(x,-y,ball).depth;
height = 0;
start = true;
follow = false;
dist = room_height/2;
if(abs(y - instance_nearest(x,-y,ball).y) < dist){
	if(abs(x - instance_nearest(x,-y,ball).x) < dist){
		follow = true;
		move_towards_point(finx, -find, 4.5);
	}
}