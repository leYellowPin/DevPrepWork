// init

hsp = 0;
vsp = 0;
move_dir = 0;
move_spd = 5;

input = {
	left: keyboard_check(vk_left) || keyboard_check(ord("A")),
	right: keyboard_check(vk_right) || keyboard_check(ord("D")),
	up: keyboard_check(vk_up) || keyboard_check(ord("W")),
	down: keyboard_check(vk_down) || keyboard_check(ord("S")),
	confirm: keyboard_check(vk_end) || keyboard_check(vk_space) || keyboard_check(ord("E"))
}

movement_type = 1; // 0 - normal 4 direction movement; 1 - normalized movement