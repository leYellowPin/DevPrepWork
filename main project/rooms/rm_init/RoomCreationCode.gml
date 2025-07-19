global.pause = 0;
global.resolutionX = 640;
global.resolutionY = 360;

room_count = 4; // change this when adding new rooms

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
			create_instance_layer(1616, 1440, "Npcs", o_npc_fisherman);
			global.tdialog[2].used = true;
		}
	},
	used: false
}
global.tdialog[3] = { // npc nerde talked event
	scr: 
	function () {
		layer_destroy(layer_get_id("Sequence_start"));
		global.tdialog[3].used = true;
	},
	used: false
}


global.tags = array_create(4); // platform, difficulty, genre, artstyle


global.next_xpos = "";
global.next_ypos = "";

global.saved_inst = -1;

room_goto_next();
