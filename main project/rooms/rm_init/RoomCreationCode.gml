global.pause = 0;
global.resolutionX = 640;
global.resolutionY = 360;

room_count = 5; // change this when adding new rooms

for (var i=0; i<room_count; i++) {
	global.player_pos[i] = {
		at_room: i, // based on room orders
		_x: "",
		_y: ""
	}
}

global.player_pos[rm_home]._x = 128;
global.player_pos[rm_home]._y = 288;

global.player_pos[rm_city]._x = 208;
global.player_pos[rm_city]._y = 257;

global.player_pos[rm_arcade]._x = 672;
global.player_pos[rm_arcade]._y = 686;

global.previous_room = -1;


global.tags = {
	none: false,
	pc: true,	
	mobile: true,	
	platformer: false,	
	casual: false,	
	shooter: false,	
	easy: false,	
	medium: false,	
	hard: false,	
	pixelart: false,	
	doodle: true,	
	retro: false,	
	fishing: false,	
	weird: true
}



global.tdialog = array_create(1000, -1);
global.tdialog[0] = { // toilet event
	scr: 
	function () {
		if instance_exists(dialog_toilet) {
			change_variable(dialog_toilet, "mtext", ["You no longer have the urge to piss."]);
			change_variable(dialog_toilet, "mspeed", [[1, .5]]);
			change_variable(dialog_toilet, "mtextcol", [[1, c_white]]);
			change_variable(dialog_toilet, "mscripts", -1);
			global.tdialog[0].used = true;
		}
	},
	used: false
}
global.tdialog[1] = { // npc ted talked event
	scr: 
	function () {
		if instance_exists(o_npc_ted) {
			change_variable(o_npc_ted, "choice_variable", "talked");
			global.tdialog[1].used = true;
		}
	},
	used: false
}
global.tdialog[2] = { // npc nerde talked event
	scr: 
	function () {
		if instance_exists(o_npc_nerde) {
			change_variable(o_npc_nerde, "choice_variable", "talked");
			create_instance_layer(1630, 1440, "Npcs", o_npc_fisherman);
			global.tdialog[2].used = true;
		}
	},
	used: false
}
global.tdialog[3] = { // npc nerde talked event
	scr: 
	function () {
		layer_destroy(layer_get_id("Sequence_start"));
		audio_stop_all();
		if !audio_is_playing(snd_inside) {
			audio_play_sound(snd_inside, 1, 1, .7);
		}
		global.tdialog[3].used = true;
	},
	used: false
}
global.tdialog[4] = { // platformer tag
	scr: 
	function () {
		if !global.tags.platformer {
			global.tags.platformer = scr_display_tag(global.tags.platformer, "Platformer", o_player.x, o_player.y - 48);
		}
		change_variable(o_npc_gamer04, "choice_variable", "talked");
		global.tdialog[4].used = true;
	},
	used: false
}
global.tdialog[5] = { // platformer tag
	scr: 
	function () {
		if !global.tags.fishing {
		global.tags.fishing = scr_display_tag(global.tags.fishing, "Fishing", o_player.x, o_player.y - 48);
		}
		instance_destroy(o_npc_fisherman)
		global.tdialog[5].used = true;
	},
	used: false
}
global.tdialog[6] = { // platformer tag
	scr: 
	function () {
		o_pc.game_scene = rm_tags;
		global.tdialog[6].used = true;
	},
	used: false
}



//global.tags = array_create(4); // platform, difficulty, genre, artstyle


global.next_xpos = "";
global.next_ypos = "";

global.saved_inst = -1;

// ending

global.comments = array_create(100);
global.final_score = -1;

room_goto_next();
