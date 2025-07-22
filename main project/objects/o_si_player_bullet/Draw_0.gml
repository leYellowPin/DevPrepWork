/// @description Insert description here
// You can write your code in this editor

scale = sin(current_time/1000*3.14*2 + scale_rand*3.14)*scale_rand;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale+scale*.8, image_yscale+scale, 0, c_white, 1);