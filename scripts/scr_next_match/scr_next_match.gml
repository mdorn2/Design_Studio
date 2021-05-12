function scr_next_match() {
	randomize();
	b = 0;
	match = false;
	global.chosen[global.a] = -1;
	i = random_range(0,array_length_1d(global.team));
	while(b < array_length_1d(global.chosen)){
		if(global.chosen[b] != global.team[i]){
			b++;	
		}
		else{
			b = array_length_1d(global.chosen);	
			match = true;
		}
	}
	if(match = false){
		global.chosen[global.a] = global.team[i];
		global.a++;
		global.select = global.team[i];
	}
	else{
		scr_next_match();
	}


}
