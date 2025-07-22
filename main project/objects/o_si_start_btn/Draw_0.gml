/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_rectangle(0,0,border, room_height, false);
draw_rectangle(room_width - border,0,room_width, room_height, false);
draw_set_color(c_white);

draw_line_width(border, 0, border, room_height, 3);
draw_line_width(room_width - border, 0,room_width - border, room_height, 3);
draw_set_alpha(.1)
draw_line_width(border, bottom_line,room_width-border, bottom_line, 3);
draw_set_alpha(1);

draw_set_alpha(1);
draw_set_color(c_white);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1)