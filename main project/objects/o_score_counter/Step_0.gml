/// @description Insert description here
// You can write your code in this editor

layer_text_text(counter_element, $"{score_p1} | {score_p2}");

if !goal_achieved {
	if (score_p1 == score_p2 + 4) && !goal{
		global.tags.casual = scr_display_tag(global.tags.casual, "Casual", room_width/4, 96);
		global.tags.retro = scr_display_tag(global.tags.retro, "Retro", room_width*2/4, 96);
		global.tags.medium = scr_display_tag(global.tags.medium, "Medium", room_width*3/4, 96);
		goal_achieved = 1;
		goal = 1;
	}
}


var _col;
if score_p1 > score_p2 {
	_col = o_pong_player01.image_blend;	
} else if score_p1 < score_p2 {
	_col = o_pong_player02.image_blend;	
} else if score_p1 == score_p2 {
	_col = make_color_rgb(225, 225, 225);
}

if position_switch == 1 {
	o_pong_player01.radius = lerp(o_pong_player01.radius, 128, .125);
	o_pong_player02.radius = lerp(o_pong_player02.radius, 160, .125);
	o_pong_player01.turn_spd = 1.75;
	o_pong_player02.turn_spd = 2.5;
} 
if position_switch == 2 {
	o_pong_player02.radius = lerp(o_pong_player02.radius, 128, .125);
	o_pong_player01.radius = lerp(o_pong_player01.radius, 160, .125);	
	o_pong_player01.turn_spd = 2.5;
	o_pong_player02.turn_spd = 1.75;
}

if round_start == 1 {
	round_start_frame -= 1/60;
	layer_text_blend(counter_element, merge_color(_col, c_white, round_start_frame));
	
	if round_start_frame <= 0 {
		instance_create_layer(room_width/2, room_height/2, "Instances", o_ball);
		
		o_pong_player01.image_angle = 180;
		o_pong_player01.draw_angle = 180;
		o_pong_player02.image_angle = 0;
		o_pong_player02.draw_angle = 0;
		o_pong_player02.rng = irandom_range(-2, 2);
		round_start = 0;
		round_start_frame = .8;	
	}
}