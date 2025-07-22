vsp += grv*global.TIMEWARP;
input_buffer -= 1*global.TIMEWARP;

x = lerp(x, gp_offset, .0625);

wobble_frame++;

image_index = !is_on_ground();

invincible_frame -= 1*global.TIMEWARP;
if (invincible_frame) image_alpha = 0.4;
else image_alpha = 1;

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up))
{
	input_buffer = 0.1*o_dino_game_controller.GAMESPEED
}

if (input_buffer && is_on_ground()) vsp = -jump_spd;


y += vsp*global.TIMEWARP;

if (is_on_ground())
{
	y = o_dino_game_controller.layer_ground[o_dino_game_controller.current_layer];
	vsp = 0;
}


var _col_ob = instance_place(x,y,o_dino_obstacle)
if (!invincible_frame && _col_ob && _col_ob.layer_index == o_dino_game_controller.current_layer)
{
	room_goto(rm_dino_menu);
}

var _col_orb = instance_place(x,y,o_layer_change_orb)
if (_col_orb)
{
	if (o_dino_game_controller.current_layer == 0){
		global.TIMEWARP = 1.2;
		o_dino_game_controller.current_layer = 1;
	}
	else {
		global.TIMEWARP = 1;
		o_dino_game_controller.current_layer = 0;
	}
	invincible_frame = o_dino_game_controller.GAMESPEED;
	input_buffer = 0;
	o_dino_game_controller.alt_generation = true;
	
	with (_col_orb) instance_destroy();
}

if (o_dino_game_controller.current_layer == 0){
	image_xscale = 1;
	image_yscale = 1;
	jump_spd = 12;
} else {
	image_xscale = .5;
	image_yscale = .5;
	jump_spd = 10;
}