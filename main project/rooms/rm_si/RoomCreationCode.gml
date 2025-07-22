if !variable_global_exists("si_game_score") {
	global.si_game_score = 0;	
}
if !variable_global_exists("si_lives") {
	global.si_lives = 3;
}

audio_play_sound(snd_select, 1, 0);