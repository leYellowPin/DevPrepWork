if (layer_index == o_dino_game_controller.current_layer) x -= spd;
else x -= (spd - 2)

if (!is_scored && layer_index == o_dino_game_controller.current_layer && x < o_dino_player.x) 
{
	o_dino_game_controller.game_score += 200;
	is_scored = true;
}

if (x < -50) instance_destroy();