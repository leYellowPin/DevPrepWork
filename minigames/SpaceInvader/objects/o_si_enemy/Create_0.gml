step_time = 0.1*o_si_game_controller.GAMESPEED;
step_timer = step_time;

step_length = 5;
bullet_spd_multiplier = 1;

move_down = function() 
{
	y += 10;
	bullet_spd_multiplier += .1;
	
	// lose if pass the line
	if (y >= o_si_game_controller.bottom_line) game_restart();
}

alarm[0] = irandom_range(1*o_si_game_controller.GAMESPEED, 3*o_si_game_controller.GAMESPEED);