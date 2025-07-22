if (instance_number(o_si_enemy_bullet) < o_si_game_controller.enemy_bullet_limit)
{
	with instance_create_layer(x,y,layer,o_si_enemy_bullet) {
		bullet_spd *= other.bullet_spd_multiplier;	
	}
	image_index = 1;
	image_speed = .05;
}
alarm[0] = irandom_range(2*o_si_game_controller.GAMESPEED, 5*o_si_game_controller.GAMESPEED);