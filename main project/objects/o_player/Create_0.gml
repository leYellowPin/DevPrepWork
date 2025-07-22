// init

image_speed = 0;

if global.next_xpos != "" && global.next_ypos != "" {
	x = global.next_xpos;
	y = global.next_ypos;
}

hsp = 0;
vsp = 0;
move_dir = 270;
move_spd = 2;


walk = "down";
anim_frame = 0;
anim_spd = 0.2;
anim_idle_spd = .5;

input = {
	left: keyboard_check(vk_left) || keyboard_check(ord("A")),
	right: keyboard_check(vk_right) || keyboard_check(ord("D")),
	up: keyboard_check(vk_up) || keyboard_check(ord("W")),
	down: keyboard_check(vk_down) || keyboard_check(ord("S")),
	confirm: keyboard_check(vk_end) || keyboard_check(vk_space) || keyboard_check(ord("E"))
}

movement_type = 1; // 0 - normal 4 direction movement; 1 - normalized movement


function animate_player(_type, _dir) {
	var _startf = 0;
	var _endf = 1;
	if _dir >= 45 && _dir <= 135 {
		// up	
		walk = $"up-{_type}";
		_startf = (_type == "walk") * 2 + 5;
	}
	if _dir >= 225 && _dir <= 315 {
		// down	
		walk = $"down-{_type}";
		_startf = (_type == "walk") * 3;
	}
	if _dir == 0{
		// right
		walk = $"sideway-{_type}";
		_startf = (_type == "walk") * 3 + 9;
		_endf = 3;
		image_xscale = -1;
	}
	if _dir == 180{
		// left
		walk = $"sideway-{_type}";
		_startf = (_type == "walk") * 3 + 9;
		_endf = 3;
		image_xscale = 1;
	}
	
	image_index = clamp(image_index, _startf, _startf+_endf);
}


// set camera

if !layer_exists("System") layer_create(0, "System");

with instance_create_layer(x, y, "System", o_camera){
	view_target = other.id;	
}

if global.player_pos[room]._x == noone {
	global.player_pos[room]._x = x;
}
if global.player_pos[room]._y == noone {
	global.player_pos[room]._y = y;
}

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= s_player_p;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "You";

//myPortraitTalk		= spr_portrait_examplechar_mouth;
//myPortraitTalk_x	= 26;
//myPortraitTalk_y	= 44;
//myPortraitIdle		= spr_portrait_examplechar_idle;