randomize();
for(i = 0; i < 8; i++){
	move[i] = false;
}
speed = 0;
y += 0;
x += 0;
if(holding = true){
	sprite_index = spr_zomb_iball;
}
else{
	sprite_index = spr_zomb_idle;
}
time = choose(60,90);
alarm[0] = time;