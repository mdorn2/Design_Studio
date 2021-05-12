image_xscale = -1;
depth = -room_height + 40;
instance_create_depth(x,-depth,0,obj_p_shadow);
ide = instance_nearest(x,y,obj_p_shadow);
y = 0;
for(i = 0; i < 9; i++){
	move[i] = false;
}
dir = choose(0,1,2,3,4,5,6,7);
move[dir] = true;
alarm[0] = 90;
holding = false;
throwb = false;
ball = obj_ball;
alarm[4] = 120;
run = spr_prun;
pthrow = spr_pthrow;
idle = spr_player;
idleb = spr_pidle_ball;
runb = spr_prun_ball;
if(global.color = 1){
	run = spr_pblue_run;
	pthrow = spr_pblue_throw;
	idle = spr_pblue;
	idleb = spr_pblue_ball;
	runb = spr_pblue_runb;
}
if(global.color = 2){
	run = spr_po_run;
	pthrow = spr_po_throw;
	idle = spr_po_idle;
	idleb = spr_po_idleb;
	runb = spr_po_runb;
}
if(global.color = 3){
	run = spr_ppink_r;
	pthrow = spr_ppink_throw;
	idle = spr_ppink;
	idleb = spr_ppink_b;
	runb = spr_ppink_rb;
}
if(global.color = 4){
	run = spr_pp_run;
	pthrow = spr_pp_throw;
	idle = spr_pp;
	idleb = spr_pp_ball;
	runb = spr_pp_runb;
}
if(global.color = 5){
	run = spr_pred_run;
	pthrow = spr_pred_throw;
	idle = spr_pred;
	idleb = spr_pred_ball;
	runb = spr_pred_runb;
}
if(global.color = 6){
	run = spr_pwhite_run;
	pthrow = spr_pwhite_throw;
	idle = spr_pwhite;
	idleb = spr_pwhite_ball;
	runb = spr_pwhite_runb;
}
if(global.color = 7){
	run = spr_py_run;
	pthrow = spr_py_throw;
	idle = spr_py;
	idleb = spr_py_ball;
	runb = spr_py_runb;
}
if(global.color = 8){
	run = spr_prun;
	pthrow = spr_pthrow;
	idle = spr_player;
	idleb = spr_pidle_ball;
	runb = spr_prun;
}
if(global.color = 9){
	run = spr_pblack_run;
	pthrow = spr_pblack_throw;
	idle = spr_pblack;
	idleb = spr_pblack_ball;
	runb = spr_pblack_runb;
}