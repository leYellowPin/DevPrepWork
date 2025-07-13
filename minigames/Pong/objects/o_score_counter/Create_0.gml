/// @description Insert description here
// You can write your code in this editor

counter_element = layer_text_get_id("UI_Layer", "counter");

layer_text_blend(counter_element, c_white);

score_p1 = 0;
score_p2 = 0;

position_switch = 1;

o_pong_player01.radius = 128;
o_pong_player02.radius = 160;

o_pong_player01.turn_spd = 1.5;
o_pong_player02.turn_spd = 2.5;

o_pong_player01.image_angle = 180;
o_pong_player02.image_angle = 0;

current_round = 0;
round_start = 0;
round_start_frame = .8;