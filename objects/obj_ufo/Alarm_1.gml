randomize();
for(i = 0; i < 8; i++){
	move[i] = false;
}
speed = 0;
x += 0;
depth += 0;
if(holding = true){
	sprite_index = spr_ufo_idle_ball;
}
else{
	sprite_index = spr_ufo_idle;
}
time = choose(60,90);
alarm[0] = time;