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
run = spr_polo_idle;
throwb = false;
start = true;
alarm[4] = 240;
ball = obj_ball;
global.accuracy = 20;
instance_create_depth(x,-depth,0,obj_e_shadow1);
ide = instance_nearest(x,-depth,obj_e_shadow1);