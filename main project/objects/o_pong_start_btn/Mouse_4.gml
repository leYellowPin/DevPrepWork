/// @description Insert description here
// You can write your code in this editor
instance_create_layer(room_width/2, room_height/2, "Instances", o_pong_player01);
instance_create_layer(room_width/2, room_height/2, "Instances", o_pong_player02);
instance_create_layer(room_width/2, room_height/2, "Instances", o_score_counter);
instance_destroy(o_pong_quit_btn);
instance_create_layer(room_width-32-48, 32+16, layer, o_pong_quit_btn, {image_speed : 0, image_index : 1});
instance_destroy();