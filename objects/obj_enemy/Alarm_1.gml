randomize();
for(i = 0; i < 8; i++){
	move[i] = false;
}
speed = 0;
depth += 0;
x += 0;
if(holding = true){
	sprite_index = spr_ncsu_idle_ball;
}
else{
	sprite_index = spr_other;
}
time = choose(30,60);
alarm[0] = time;