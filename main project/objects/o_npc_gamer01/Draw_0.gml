/// @description Insert description here
// You can write your code in this editor

var _offset = abs(4*cos(current_time/1000 * 3.14 * 2)) * !instance_exists(obj_textbox);

draw_sprite_ext(sprite_index, image_index, x, y-_offset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);