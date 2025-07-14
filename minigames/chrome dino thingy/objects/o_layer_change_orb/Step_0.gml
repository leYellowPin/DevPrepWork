if (x < -50)
{
	o_dino_game_controller.alt_generation = true;
	instance_destroy();
}

if place_meeting(x, y, o_dino_obstacle) {
	x += 48;	
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