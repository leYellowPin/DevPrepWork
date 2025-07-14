global.pause = 0;
global.resolutionX = 640;
global.resolutionY = 360;

room_count = 3; // change this when adding new rooms

for (var i=0; i<room_count; i++) {
	global.player_pos[i] = {
		at_room: i, // based on room orders
		_x: "",
		_y: ""
	}
}

global.next_xpos = "";
global.next_ypos = "";

room_goto_next();