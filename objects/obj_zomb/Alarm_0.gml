randomize();
for(i = 0; i < 8; i++){
	move[i] = false;
}
speed = 0;
dir = choose(0,1,2,3,4,5,6,7);
time = choose(120,180,240);
move[dir] = true;
alarm[1] = time;
global.accuracy = 100;