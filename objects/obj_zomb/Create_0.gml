randomize();
for(i = 0; i < 8; i++){
	move[i] = false;
}
y = 0;
dir = choose(0,1,2,3,4,5,6,7);
move[dir] = true;
alarm[0] = 90;
holding = false;
run = spr_zomb_walk;
throwb = false;
start = true;
alarm[4] = 240;
ball = obj_ball;
instance_create_depth(x,-depth,0,obj_z_shadow);
ide = instance_nearest(x,-depth,obj_z_shadow);