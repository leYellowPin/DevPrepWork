/// @description Insert description here
// You can write your code in this editor

counter_element = layer_text_get_id("Assets", "counter");

audio_stop_all();
if !audio_is_playing(snd_pong) {
	audio_play_sound(snd_pong, 1, 1, .7);
}

layer_text_blend(counter_element, make_color_rgb(225, 225, 225));

score_p1 = 0;
score_p2 = 0;

position_switch = 1;

o_pong_player01.radius = 128;
o_pong_player02.radius = 160;

o_pong_player01.turn_spd = 2.5;
o_pong_player02.turn_spd = 3.5;

o_pong_player01.image_angle = 180;
o_pong_player01.draw_angle = 180;
o_pong_player02.image_angle = 0;
o_pong_player02.draw_angle = 0;

alarm[0] = 30;

current_round = 0;
round_start = 0;
round_start_frame = .8;

goal = 0;
goal_achieved = 0;