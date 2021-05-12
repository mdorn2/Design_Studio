function camera_update_script() {
	//Set up camera location
	var zz = -300;
	var xx = 0;//Rotation is negative now to match with the old gif and spin clockwise
	var yy = 0;

	if(instance_exists(obj_player)){
		xx = obj_player.x
		yy = -obj_player.depth + 620;
	}

	if(instance_exists(obj_stp)){
		xx = obj_stp.x
		yy = -obj_stp.depth + 800;
	}
	if(!instance_exists(obj_player) && !instance_exists(obj_stp)){
		xx = room_width/2;
		yy = 1500;
	}
	//Build a matrix that looks from the camera location above, to the room center. The up vector points to -z
	mLookat = matrix_build_lookat(xx,yy,zz,(room_width/2),0,0, 0,0,-1);

	//Assign the matrix to the camera. This updates were the camera is looking from, without having to unnecessarily update the projection.
	camera_set_view_mat(view_camera[0], mLookat);


}
