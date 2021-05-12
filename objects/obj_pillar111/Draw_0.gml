for(i = 0; i < rows; i++){
	var mat = matrix_build(0,-51 - (50*i), 25 - (50*i), 0, 0, 90, 1, 1, 1);
	//The world matrix is what is used to transform drawing within "world" or "object" space.
	matrix_set(matrix_world, mat);
	//Draw the buffer
	draw_self();

	//Resetting transforms can be done like this:
	matrix_set(matrix_world, matrix_build_identity());
	
	var mat = matrix_build(0, 0 - (50*(i+1)), 25 - (50*(i + 1)), 0, -90, 90, 1, 1, 1);
	//The world matrix is what is used to transform drawing within "world" or "object" space.
	matrix_set(matrix_world, mat);
	//Draw the buffer
	draw_self();

	//Resetting transforms can be done like this:
	matrix_set(matrix_world, matrix_build_identity());
}