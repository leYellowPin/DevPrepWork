var hsp = (keyboard_check(vk_right) - keyboard_check(vk_left))*spd;

x += hsp;

if (bbox_left < o_si_game_controller.border)
{
	x = o_si_game_controller.border + (x - bbox_left);
}

if (bbox_right > room_width - o_si_game_controller.border)
{
	x = (room_width - o_si_game_controller.border) - (bbox_right - x);
}

// shooting
if (keyboard_check_pressed(vk_space) || keyboard_check(vk_up))
{
	if (!instance_exists(o_si_player_bullet)) instance_create_layer(x,y,layer,o_si_player_bullet);
}