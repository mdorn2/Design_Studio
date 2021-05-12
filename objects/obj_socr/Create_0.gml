randomize();
for(i = 0; i < 8; i++){
	move[i] = false;
}
y = 0;
depth = -100;
dir = choose(0,1,2,3,4,5,6,7);
move[dir] = true;
alarm[0] = 90;
holding = false;
run = spr_soc_run;
throwb = false;
start = true;
alarm[4] = 240;
ball = obj_ball;
global.accuracy = 20;
flop = false;
finx = 0;
finy = 0;
fx = 0;
fy = 0;
instance_create_depth(x,-depth,0,obj_e_shadow);
ide = instance_nearest(x,-depth,obj_e_shadow);