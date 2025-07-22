/// @description Insert description here
// You can write your code in this editor

if tag_type == 1 {
	instance_destroy();	
}

image_alpha -= spd;

if image_alpha <= 0 {
	if instance_exists(o_player) {
		o_player.movement_type = 1;	
	}

	instance_destroy();	
}