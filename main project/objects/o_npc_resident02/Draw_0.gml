/// @description Insert description here
// You can write your code in this editor


if !instance_exists(obj_textbox) {
	if instance_exists(o_player) && point_distance(x, y, o_player.x, o_player.y) > 32 {
		move_frame += 1/60;
	}
}

x = xstart + 96*cos(move_frame * 3.14 * .25);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);