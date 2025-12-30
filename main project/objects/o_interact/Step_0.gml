/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, o_player) {
	if keyboard_check_pressed(ord("E")) {
		if script_exists(execute_script) && execute_script != undefined {
			if script_arg != undefined {
				script_execute_ext(execute_script, script_arg);	
			} else {
				script_execute(execute_script);	
			}
		}
	}
}