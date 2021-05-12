var mat = matrix_build(0, room_height/2, 99, 0, 0, 0, 1, 1, 1);
//The world matrix is what is used to transform drawing within "world" or "object" space.
matrix_set(matrix_world, mat);

//Draw the buffer
draw_self();

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());