draw_self();
draw_sprite(spr_banner,global.color - 1,x,y);
draw_set_color(c_white);
draw_set_font(global.fontbig);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(x+48,y,global.abv);