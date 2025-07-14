var _random_offset;


var _cloud01 = layer_get_id("Clouds01");
var _cloud02 = layer_get_id("Clouds02");
var _ground01 = layer_get_id("Ground01");
var _ground02 = layer_get_id("Ground02");
var _sky = layer_background_get_id(layer_get_id("Background"));
var _night_filter = layer_get_fx("Night_Filter");
	
layer_text_text(counter_element, game_score);

if ((game_score mod 25) == 0) && (game_score > 0) && !dncycle_switch {
	dncycle_time = 0;
	dncycle = !dncycle;
	dncycle_switch = 1;
}
if dncycle_switch {
	
	var _sky_color_day, _sky_color_sunset, _sky_color_night, _sky_color_sunrise, 
	_cloud_color_day, _cloud_color_sunset, _cloud_color_night, _cloud_color_sunrise;
	var _calc_time;
	
	_sky_color_day = #FFFFFF;
	_sky_color_sunset = #A669CC;
	_sky_color_night = #291A33;
	_sky_color_sunrise = #FF5B4C;
	
	_cloud_color_day = #FFFFFF;
	_cloud_color_sunset = #8985BF;
	_cloud_color_night = #132033;
	_cloud_color_sunrise = #3F161E;
	
	
	var _time = 4;
	var _half_time = _time*.5;
	dncycle_time += (1/60)*global.TIMEWARP;
	if dncycle_time >= (_time - .01) {
		if dncycle {
			layer_background_blend(_sky, _sky_color_night);
			layer_background_blend(_cloud01, _cloud_color_night);
			layer_background_blend(_cloud02, _cloud_color_night);
		} else {
			layer_background_blend(_sky, _sky_color_day);
			layer_background_blend(_cloud01, _cloud_color_day);
			layer_background_blend(_cloud02, _cloud_color_day);
		}
		dncycle_switch = 0;
	}
	if dncycle == 1 {
		if dncycle_time <= _half_time {
			_calc_time = dncycle_time/_half_time;
			// sky
			layer_background_blend(_sky, merge_color(_sky_color_day, _sky_color_sunset, dncycle_time/_half_time));
			// cloud
			layer_background_blend(_cloud01, merge_color(_cloud_color_day, _cloud_color_sunset, dncycle_time/_half_time));
			layer_background_blend(_cloud02, merge_color(_cloud_color_day, _cloud_color_sunset, dncycle_time/_half_time));
		}
		if (dncycle_time > _half_time) && (dncycle_time <= _time){
			_calc_time = (dncycle_time-_half_time)/_half_time;
			// sky
			layer_background_blend(_sky, merge_color(_sky_color_sunset, _sky_color_night, (dncycle_time-_half_time)/_half_time));
			// cloud
			layer_background_blend(_cloud01, merge_color(_cloud_color_sunset, _cloud_color_night, (dncycle_time-_half_time)/_half_time));
			layer_background_blend(_cloud02, merge_color(_cloud_color_sunset, _cloud_color_night, (dncycle_time-_half_time)/_half_time));
			// filter
			var _params = [1-_calc_time*.5, 1-_calc_time*.5, 1-_calc_time*.5, 1];
			
			fx_set_parameter(_night_filter, "g_TintCol", _params);
		}
	} else {
		if dncycle_time <= _half_time {
			_calc_time = dncycle_time/_half_time;
			// sky
			layer_background_blend(_sky, merge_color(_sky_color_night, _sky_color_sunrise, dncycle_time/_half_time));
			// cloud
			layer_background_blend(_cloud01, merge_color(_cloud_color_night, _cloud_color_sunrise, dncycle_time/_half_time));
			layer_background_blend(_cloud02, merge_color(_cloud_color_night, _cloud_color_sunrise, dncycle_time/_half_time));
			// filter
			var _params = [.5+_calc_time*.5, .5+_calc_time*.5, .5+_calc_time*.5, 1];
			
			fx_set_parameter(_night_filter, "g_TintCol", _params);
		}
		if (dncycle_time > _half_time) && (dncycle_time <= _time){
			_calc_time = (dncycle_time-_half_time)/_half_time;
			// sky
			layer_background_blend(_sky, merge_color(_sky_color_sunrise, _sky_color_day, (dncycle_time-_half_time)/_half_time));
			// cloud
			layer_background_blend(_cloud01, merge_color(_cloud_color_sunrise, _cloud_color_day, (dncycle_time-_half_time)/_half_time));
			layer_background_blend(_cloud02, merge_color(_cloud_color_sunrise, _cloud_color_day, (dncycle_time-_half_time)/_half_time));
		}
	}
}

spawn_timer -= 1*global.TIMEWARP;
if (alt_generation) alt_spawn_timer -= 1*global.TIMEWARP;

if (spawn_timer <= 0)
{

	spawn_obstacle(current_layer);

	
	obstacle_spd_increase += 0.1*global.TIMEWARP;

	if (obstacle_spd_increase >= 7) spawn_time -= 0.01*global.TIMEWARP;
	
	// spawn orb

	if ((game_score mod 15) == 0) && (game_score > 0)
	{
		with instance_create_layer(room_width + 48, layer_ground[current_layer] - 32, layer, o_layer_change_orb){
			layer_index = other.current_layer;	
		}
		alt_generation = false;
	}
	
	_random_offset = random_range(-0.05, 0.05);
	spawn_timer = round((spawn_time+_random_offset)*GAMESPEED);
}

if (alt_spawn_timer <= 0)
{
	spawn_obstacle(!current_layer);
	
	_random_offset = random_range(-0.05, 0.05);

	alt_spawn_timer = round((spawn_time+0.6+_random_offset)*GAMESPEED);
}


layer_hspeed(_cloud01, -global.TIMEWARP);
layer_hspeed(_cloud02, -.25*global.TIMEWARP);
layer_hspeed(_ground01, -5*global.TIMEWARP);
layer_hspeed(_ground02, -3*global.TIMEWARP);

