var mat = matrix_build(343, -210, 100, -90, -90, 0, 1, 1, 1);
//The world matrix is what is used to transform drawing within "world" or "object" space.
matrix_set(matrix_world, mat);

//Draw the buffer
draw_self();

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());

var mat = matrix_build(1174, -210, 100, -90, -90, 0, 1, 1, 1);
//The world matrix is what is used to transform drawing within "world" or "object" space.
matrix_set(matrix_world, mat);

//Draw the buffer
draw_self();

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());