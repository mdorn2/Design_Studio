randomize();
for(i = 0; i < rows; i++){
	var mat = matrix_build(0, -10 + (-50*i), 25 - (50*i), -90, 0, 0, 1, 1, 1);
	//The world matrix is what is used to transform drawing within "world" or "object" space.
	matrix_set(matrix_world, mat);
	image_index = i mod 7;
	//Draw the buffer
	draw_self();

	//Resetting transforms can be done like this:
	matrix_set(matrix_world, matrix_build_identity());
}