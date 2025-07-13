/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(0.25 + .5*(o_score_counter.position_switch == 2));
draw_set_color(c_white);
draw_set_circle_precision(64);
draw_circle_width(room_width/2, room_height/2, radius, 2, 64);
draw_set_color(c_white);
draw_set_alpha(1);