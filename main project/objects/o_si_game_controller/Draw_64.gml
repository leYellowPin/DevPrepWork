/// @description Insert description here
// You can write your code in this editor

if start_anim > 0 {
	start_anim -= 1/60;
	counter_alpha = abs(sin(current_time/1000 * 3.14*3));
} else {
	counter_alpha = 1;	
}

draw_set_font(fnt_dialogue);
draw_set_alpha(counter_alpha);
draw_text(40, 40, global.si_game_score);
draw_text(40, 120, "Lives");

for (var i=0; i<global.si_lives; i++) {
	draw_sprite(s_si_p_da, 0, 32+40+80*i, 200);	
}

draw_set_alpha(1);