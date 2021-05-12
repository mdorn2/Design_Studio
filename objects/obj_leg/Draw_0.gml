var mat = matrix_build(0, 0, 100, -90, 0, 0, 1, 1, 1);
//The world matrix is what is used to transform drawing within "world" or "object" space.
matrix_set(matrix_world, mat);

//Draw the buffer
draw_set_font(fnt_catch);
draw_set_color(c_green);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(instance_exists(c)){
	draw_text(c.x,-c.depth,"MY LEG!");
}

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());
