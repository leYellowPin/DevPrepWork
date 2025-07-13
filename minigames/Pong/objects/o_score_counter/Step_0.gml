/// @description Insert description here
// You can write your code in this editor

layer_text_text(counter_element, $"{score_p1} | {score_p2}");

if position_switch == 1 {
	o_pong_player01.radius = lerp(o_pong_player01.radius, 128, .125);
	o_pong_player02.radius = lerp(o_pong_player02.radius, 160, .125);
	o_pong_player01.turn_spd = 1.5;
	o_pong_player02.turn_spd = 2.5;
} 
if position_switch == 2 {
	o_pong_player02.radius = lerp(o_pong_player02.radius, 128, .125);
	o_pong_player01.radius = lerp(o_pong_player01.radius, 160, .125);	
	o_pong_player01.turn_spd = 2.5;
	o_pong_player02.turn_spd = 1.5;
}

if round_start == 1 {
	round_start_frame -= 1/60;
	layer_text_blend(counter_element, merge_color(c_white, c_yellow, round_start_frame));
	
	if round_start_frame <= 0 {
		instance_create_layer(room_width/2, room_height/2, "Instances", o_ball);
		
		o_pong_player01.image_angle = 180;
		o_pong_player02.image_angle = 0;
		round_start = 0;
		round_start_frame = .8;	
	}
}