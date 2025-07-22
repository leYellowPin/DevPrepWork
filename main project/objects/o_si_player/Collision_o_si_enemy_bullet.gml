global.si_lives--;

if global.si_lives == 0 {
	global.si_game_score = 0;	
	global.si_lives = 3;
}

room_restart();