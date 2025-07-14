/// @description Insert description here
// You can write your code in this editor

// always spawn the first one after 5 seconds

with instance_create_layer(room_width + 24, layer_ground[current_layer] - 32, layer, o_layer_change_orb){
	layer_index = other.current_layer;	
}
alt_generation = false;