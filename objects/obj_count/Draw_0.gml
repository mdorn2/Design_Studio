var mat = matrix_build(0, 0, 100, -90, 0, 0, -1, 1, 1);
//The world matrix is what is used to transform drawing within "world" or "object" space.
matrix_set(matrix_world, mat);

//Draw the buffer
draw_set_font(global.count);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(-room_width/2,-250,global.time);

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());