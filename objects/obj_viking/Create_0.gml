randomize();
y = 0;
depth = -room_height/4 + 1;
for(i = 0; i < 8; i++){
	move[i] = false;
}
dir = choose(0,2,3);
move[dir] = true;
alarm[0] = 90;
alarm[2] = 120;
holding = true;
run = spr_viking_run;
throwb = false;
start = true;
alarm[4] = 240;
ball = obj_ball;
global.accuracy = 20;
instance_create_depth(x,-depth,0,obj_v_shadow);
ide = instance_nearest(x,-depth,obj_v_shadow);