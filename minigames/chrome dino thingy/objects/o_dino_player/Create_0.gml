grv = 0.7;
vsp = 0;
jump_spd = 12;

wobble_frame = 0;

gp_offset = 128;

invincible_frame = 0;
input_buffer = 0;

is_on_ground = function()
{
	return y >= o_dino_game_controller.layer_ground[o_dino_game_controller.current_layer]
}