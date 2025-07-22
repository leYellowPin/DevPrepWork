/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
draw_set_alpha(msg);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_dialogue);
draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2, $"INVALID FORM: \n{reason}", 1, 1, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_alpha(1)
draw_set_color(c_white);