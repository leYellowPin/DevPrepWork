/// @description Insert description here
// You can write your code in this editor

var _offset_x, _offset_y;

if !instance_exists(obj_textbox) {
	move_frame += .8/60;
}

_offset_y = 4*sin(move_frame * 3.14 * 2);
_offset_x = 4*cos(move_frame * 3.14 * 2);

draw_sprite_ext(sprite_index, image_index, x+_offset_x, y+_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);