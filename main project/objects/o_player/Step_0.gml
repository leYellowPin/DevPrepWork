/// @description Insert description here
// You can write your code in this editor

input.left= keyboard_check(vk_left) || keyboard_check(ord("A"));
input.right= keyboard_check(vk_right) || keyboard_check(ord("D"));
input.up= keyboard_check(vk_up) || keyboard_check(ord("W"));
input.down= keyboard_check(vk_down) || keyboard_check(ord("S"));
input.confirm= keyboard_check(vk_end) || keyboard_check(vk_space) || keyboard_check(ord("E"));

switch(movement_type){
	case 0:
		hsp = move_spd*(input.right - input.left);
		vsp = move_spd*(input.down - input.up);
	break;
	case 1:
		if (input.right + input.left + input.up + input.down > 0) {
			move_dir = point_direction(x, y, x+(input.right-input.left)*10, y+(input.down-input.up)*10);
			hsp = lengthdir_x(move_spd, move_dir);
			vsp = lengthdir_y(move_spd, move_dir);
		} else {
			hsp = 0;
			vsp = 0;
		}
	break;
}

move_and_collide(hsp, vsp, o_solid, 4, 0, 0, move_spd, move_spd);