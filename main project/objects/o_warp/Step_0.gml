/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, o_player) && warp_to != noone{
	if global.player_pos[room]._x != o_player.x {
		global.player_pos[room]._x = o_player.xprevious;
	}
	if global.player_pos[room]._y  != o_player.y {
		global.player_pos[room]._y = o_player.yprevious;
	}
	
	if global.player_pos[warp_to]._x != "" && global.player_pos[warp_to]._y != "" {
		global.next_xpos = global.player_pos[warp_to]._x;
		global.next_ypos = global.player_pos[warp_to]._y;
	}
	room_goto(warp_to);
}