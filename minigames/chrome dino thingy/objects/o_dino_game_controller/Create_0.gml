randomise();

GAMESPEED = game_get_speed(gamespeed_fps);

global.TIMEWARP = 1;

dncycle_time = 0;
dncycle = 0; // 0: day; 1: night
dncycle_switch = 0;

game_score = 0;
counter_element = layer_text_get_id("Assets_1", "game_score_display");

layer_text_halign(counter_element, textalign_right);

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
	var _inst_layer = "Instances";
	if _layer == 1 {
		_inst_layer = "Instances_bg"	
	}
	with instance_create_layer(room_width + 48, layer_ground[_layer], _inst_layer, o_dino_obstacle)
	{
		//spd += other.obstacle_spd_increase;
		//spd = min(spd, 20);
		
		/* readd this later
		if (irandom_range(1,9) == 1)
		{
			y -= 105;
			image_angle = 180;
		}
		*/
	
		layer_index = _layer;
	}
}


// edit background apperances

var _cloud01 = layer_background_get_id(layer_get_id("Clouds01"));
var _cloud02 = layer_background_get_id(layer_get_id("Clouds02"));
var _ground01 = layer_background_get_id(layer_get_id("Ground01"));
var _ground02 = layer_background_get_id(layer_get_id("Ground02"));


layer_background_xscale(_ground02, .75);
layer_background_yscale(_ground02, .75);

layer_background_alpha(_cloud01, .8);
layer_background_alpha(_cloud02, .5);

alarm[0] = 60*4;
