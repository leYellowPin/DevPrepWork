/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, o_player) {
	if keyboard_check_pressed(ord("E")) {
		if !is_dialogevent {
			if mspeaker == noone {
				mspeaker = id;
			}
			with mspeaker{
				create_dialogue(other.mtext, other.mspeaker, other.meffect, other.mspeed, other.mtype, other.mnextline, other.mscripts, other.mtextcol, other.memotion, other.memote);
			}
		} else {
			if mspeaker == noone {
				mspeaker = -1;
			}
			with mspeaker{
				create_textevent(other.mtext, other.mspeaker, other.meffect, other.mspeed, other.mtype, other.mnextline, other.mscripts, other.mtextcol, other.memotion, other.memote);
			}
		}
	}
}