// init

if global.next_xpos != "" && global.next_ypos != "" {
	x = global.next_xpos;
	y = global.next_ypos;
}

hsp = 0;
vsp = 0;
move_dir = 0;
move_spd = 2;

input = {
	left: keyboard_check(vk_left) || keyboard_check(ord("A")),
	right: keyboard_check(vk_right) || keyboard_check(ord("D")),
	up: keyboard_check(vk_up) || keyboard_check(ord("W")),
	down: keyboard_check(vk_down) || keyboard_check(ord("S")),
	confirm: keyboard_check(vk_end) || keyboard_check(vk_space) || keyboard_check(ord("E"))
}

movement_type = 1; // 0 - normal 4 direction movement; 1 - normalized movement

// set camera

if !layer_exists("System") layer_create(0, "System");

with instance_create_layer(x, y, "System", o_camera){
	view_target = other.id;	
}

switch(room) {
	case rm_home:
		move_spd = 2.5;
		o_camera.viewZoomW = .75;
		o_camera.viewZoomH = .75;
	break;
	case rm_city:
		move_spd = 3;
		o_camera.viewZoomW = 1.25;
		o_camera.viewZoomH = 1.25;
	break;
}

if global.player_pos[room]._x == noone {
	global.player_pos[room]._x = x;
}
if global.player_pos[room]._y == noone {
	global.player_pos[room]._y = y;
}