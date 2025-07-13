/// @description Insert description here
// You can write your code in this editor

with o_score_counter {
	if round_start == 0 {
		if position_switch == 1 {
			score_p1++;
		} else if position_switch == 2 {
			score_p2++;
		}
		instance_destroy(other.id);
		round_start = 1;
	}
}