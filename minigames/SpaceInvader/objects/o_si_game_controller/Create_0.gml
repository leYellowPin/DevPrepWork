randomise();
GAMESPEED = game_get_speed(gamespeed_fps);

game_score = 0;

border = 400;
bottom_line = 950;

enemy_bullet_limit = 4;

o_si_player.y = bottom_line - (o_si_player.bbox_bottom - o_si_player.y);
o_si_player.x = room_width/2;

enemy_dir = 1;

move_enemy_down = function()
{
	for (var i = 0; i < instance_number(o_si_enemy); i++)
	{
		instance_find(o_si_enemy, i).move_down();
	}
}

alarm[0] = irandom_range(10*GAMESPEED, 35*GAMESPEED);