randomise();
GAMESPEED = game_get_speed(gamespeed_fps);

audio_stop_all();
if !audio_is_playing(snd_si) {
	audio_play_sound(snd_si, 1, 1, .7);
}

goal = 0;
goal_achieved = 0;

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

counter_alpha = 1;
start_anim = 1;

alarm[0] = irandom_range(10*GAMESPEED, 35*GAMESPEED);