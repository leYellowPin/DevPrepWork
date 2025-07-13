randomise();

GAMESPEED = game_get_speed(gamespeed_fps);

game_score = 0;

current_layer = 0;
layer_ground = [288, 224];

// spawn obstacle
spawn_time = 1.2;
spawn_timer = spawn_time*GAMESPEED;
alt_spawn_timer = round(spawn_timer + 0.6*GAMESPEED);
obstacle_spd_increase = 0;
alt_generation = true;

spawn_obstacle = function(_layer)
{
	with instance_create_layer(room_width + 20, layer_ground[_layer], layer, o_dino_obstacle)
	{
		spd += other.obstacle_spd_increase;
		spd = min(spd, 20);
	
		if (irandom_range(1,9) == 1)
		{
			y -= 105;
			image_angle = 180;
		}
	
		layer_index = _layer;
	}
}
