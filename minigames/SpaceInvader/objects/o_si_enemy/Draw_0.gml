/// @description Insert description here
// You can write your code in this editor
var _wobble_y = sin(current_time/1000*3.14*2 + wobble_rand)*4;
var _wobble_x = cos(current_time/1000*3.14*2 + wobble_rand)*4;

draw_sprite_ext(sprite_index, image_index, x+_wobble_x, y+_wobble_y, image_xscale, image_yscale, 0, c_white, 1);