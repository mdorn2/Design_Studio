randomize();
y = 0;
depth = -100;
for(i = 0; i < 8; i++){
	move[i] = false;
}
dir = choose(0,1,2,3,4,5,6,7);
move[dir] = true;
alarm[0] = 90;
holding = false;
run = spr_ufo_idle;
throwb = false;
start = true;
ball = obj_ball;
alarm[4] = 240;
global.accuracy = 20;
instance_create_depth(x,-depth,0,obj_e_shadow);
ide = instance_nearest(x,-depth,obj_e_shadow);