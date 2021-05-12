if(! gamepad_is_connected(0)){
	x = -device_mouse_x_to_gui(0) + 925;
	depth = -device_mouse_y_to_gui(0) - 25;
}else{
	if(gamepad_axis_value(0,gp_axisrh) < 0){
		x += 6;
	}
	if(gamepad_axis_value(0,gp_axisrh) > 0){
		x -= 6;
	}
	if(gamepad_axis_value(0,gp_axisrv) < 0){
		depth += 6;
	}
	if(gamepad_axis_value(0,gp_axisrv) > 0){
		depth -= 6;
	}
	if(gamepad_axis_value(0,gp_axisrv) = 0 && gamepad_axis_value(0,gp_axisrh) = 0){
		x += 0;
		depth += 0;
	}
}