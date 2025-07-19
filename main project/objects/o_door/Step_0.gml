/// @description Insert description here
// You can write your code in this editor

if !locked {
	var _offset = 8;
	var _flipped = sign(image_xscale);
	var _collide = collision_rectangle(x-_offset*_flipped, y-16-_offset, x+(32+_offset)*_flipped, y+32+_offset, o_player, 0, 1);
	
	if _collide {
		image_index = 1;
	} else {
		image_index = 0;	
	}
}