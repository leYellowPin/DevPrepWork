if (!is_scored && layer_index == o_dino_game_controller.current_layer && x < o_dino_player.x) 
{
	o_dino_game_controller.game_score ++;
	is_scored = true;
}

if (layer_index == 0){
	image_xscale = 1;
	image_yscale = 1;
	x -= spd_flayer*global.TIMEWARP;
} else {
	image_xscale = .5;
	image_yscale = .5;
	x -= spd_blayer*global.TIMEWARP;
}

if (x < -50) instance_destroy();