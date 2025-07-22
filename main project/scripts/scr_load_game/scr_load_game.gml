// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_arcade(_game){
	global.next_xpos = o_player.x;
	global.next_ypos = o_player.y;
	
	global.previous_room = room;
	
	room_goto(_game);
}