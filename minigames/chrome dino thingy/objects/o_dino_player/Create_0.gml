grv = 0.7;
vsp = 0;

invincible_frame = 0;
input_buffer = 0;

is_on_ground = function()
{
	return y >= o_dino_game_controller.layer_ground[o_dino_game_controller.current_layer]
}