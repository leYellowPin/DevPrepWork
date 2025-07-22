step_timer --;

if (step_timer <= 0)
{
	x += step_length*o_si_game_controller.enemy_dir;
	
	step_timer = step_time;
	image_xscale = o_si_game_controller.enemy_dir;
}
if image_index == 0 {
	image_speed = 0;	
}