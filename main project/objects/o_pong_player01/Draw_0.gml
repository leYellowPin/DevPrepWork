/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(s_pong_player01, 0, x, y, 1, 1, draw_angle, image_blend, 1);

if instance_exists(o_score_counter){
	draw_set_alpha(0.25 + .5*(o_score_counter.position_switch == 1));
	draw_set_color(image_blend);
	draw_circle_width(room_width/2, room_height/2, radius, 2, 64);
	draw_set_color(c_white);
	draw_set_alpha(1);
}