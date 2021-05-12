draw_set_font(fnt_catch);
draw_set_color(c_green);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(instance_exists(c)){
	draw_text(c.x,c.y-60,"CATCH!");
}