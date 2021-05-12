randomize();
depth = -100;
y = 0;
instance_create_depth(160,0, depth, obj_sta);
instance_create_depth(380,0, depth, obj_stp);
instance_create_depth(600,0, depth, obj_sta);
instance_create_depth(820,0, depth, obj_sta);
if(global.select = -1){
	/*
	instance_create_depth(160,0, depth, obj_stnc);
	instance_create_depth(380,0, depth, obj_stnc);
	instance_create_depth(600,0, depth, obj_stnc);
	instance_create_depth(820,0, depth, obj_stnc);
	*/
	instance_create_depth(160,0,depth,obj_sttl);
	instance_create_depth(380,0,depth,obj_sttl);
	instance_create_depth(600,0,depth,obj_sttl);
	instance_create_depth(820,0,depth,obj_sttl);
	instance_destroy();
}
if(global.select = 0){
	instance_create_depth(160,0,depth,obj_stufo);
	instance_create_depth(380,0,depth,obj_stufo);
	instance_create_depth(600,0,depth,obj_stufo);
	instance_create_depth(820,0,depth,obj_stufo);
	instance_destroy();
}
if(global.select = 1){
	instance_create_depth(160,0,depth,obj_staus);
	instance_create_depth(380,0,depth,obj_staus);
	instance_create_depth(600,0,depth,obj_staus);
	instance_create_depth(820,0,depth,obj_staus);
	instance_destroy();
}
if(global.select = 2){
	instance_create_depth(irandom_range(45,930),0,irandom_range(-100,-room_height/2),obj_stz);
	instance_create_depth(irandom_range(45,930),0,irandom_range(-100,-room_height/2),obj_stz);
	instance_create_depth(irandom_range(45,930),0,irandom_range(-100,-room_height/2),obj_stz);
	instance_create_depth(irandom_range(45,930),0,irandom_range(-100,-room_height/2),obj_stz);
	instance_create_depth(irandom_range(45,930),0,irandom_range(-100,-room_height/2),obj_stz);
	instance_create_depth(irandom_range(45,930),0,irandom_range(-100,-room_height/2),obj_stz);
	instance_create_depth(irandom_range(45,930),0,irandom_range(-100,-room_height/2),obj_stz);
	instance_create_depth(irandom_range(45,930),0,irandom_range(-100,-room_height/2),obj_stz);
	instance_destroy();
}
if(global.select = 3){
	instance_create_depth(160,0,depth,obj_stsr);
	instance_create_depth(380,0,depth,obj_stsr);
	instance_create_depth(600,0,depth,obj_stsr);
	instance_create_depth(820,0,depth,obj_stsr);
	instance_destroy();
}
if(global.select = 4){
	instance_create_depth(160,0,depth,obj_stsk);
	instance_create_depth(380,0,depth,obj_stsk);
	instance_create_depth(600,0,depth,obj_stsk);
	instance_create_depth(820,0,depth,obj_stsk);
	instance_destroy();
}
if(global.select = 5){
	instance_create_depth(160,0,depth,obj_sttl);
	instance_create_depth(380,0,depth,obj_sttl);
	instance_create_depth(600,0,depth,obj_sttl);
	instance_create_depth(820,0,depth,obj_sttl);
	instance_destroy();
}
if(global.select = 6){
	instance_create_depth(-650,0,depth,obj_viking_start);
	instance_create_depth(-500,0,depth,obj_viking_start);
	instance_create_depth(-350,0,depth,obj_viking_start);
	instance_create_depth(-200,0,depth,obj_viking_start);
	instance_destroy();
}

