var _random_offset;

spawn_timer --;
if (alt_generation) alt_spawn_timer --;

game_score ++;

if (spawn_timer == 0)
{

	spawn_obstacle(current_layer);

	obstacle_spd_increase += 0.1;

	if (obstacle_spd_increase >= 7) spawn_time -= 0.01;
	
	// spawn orb
	var _r  =irandom_range(1,20)
	show_debug_message(_r)
	if (_r == 1 && !instance_exists(o_layer_change_orb))
	{
		instance_create_layer(room_width + 20, layer_ground[current_layer] - 32, layer, o_layer_change_orb);
		alt_generation = false
	}
	
	_random_offset = random_range(-0.05, 0.05);
	spawn_timer = round((spawn_time+_random_offset)*GAMESPEED);
}

if (alt_spawn_timer == 0)
{
	spawn_obstacle(!current_layer);
	
	_random_offset = random_range(-0.05, 0.05);

	alt_spawn_timer = round((spawn_time+0.6+_random_offset)*GAMESPEED)
}