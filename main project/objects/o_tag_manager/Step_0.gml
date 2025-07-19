/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R"))
	game_restart()

if keyboard_check_pressed(vk_shift){
	result_list[0] = holder1.tag_list_content; // 0: mobile ; 1: pc
	result_list[1] = holder2.tag_list_content; // 0: platf ; 1: casual ; 2: shooter
	result_list[2] = holder3.tag_list_content; // 0: easy ; 1: normal ; 2: hard
	result_list[3] = holder4.tag_list_content; // 0: retro ; 1: pixel art ; 2: doodle
	result_list[4] = holder5.tag_list_content; // 0: fishing ; 1: weird
	
	// orders
	// platform genre difficulty art other
	// [[1, 0], [2, 1, 0], [limited], [limited], [limited]]
	
	//show_message(result_list);
	ending_type = "normal";
	
	// mobile games only
	gscore -= 1*array_equals(result_list[0], [0]);
	
	// mobile & pc
	gscore += 1*array_equals(result_list[0], [1, 0]);
	
	// casual only
	gscore -= 4*array_equals(result_list[1], [1]);
	
	// platf only
	gscore -= 2*array_equals(result_list[1], [0]);
	
	// casual platf
	gscore -= 1*array_equals(result_list[1], [1, 0]);
	
	// shooter platf
	gscore += 2*array_equals(result_list[1], [2, 0]);
	
	// easy & casual platf
	gscore -= 3*array_equals(result_list[2], [0])*array_equals(result_list[1], [1, 0]);
	
	// easy & platf
	gscore -= 2*array_equals(result_list[2], [0])*array_equals(result_list[1], [0]);
	
	// easy & shooter
	gscore -= 2*array_equals(result_list[2], [0])*array_equals(result_list[1], [2]);
	
	// easy & platf shooter
	gscore -= 2*array_equals(result_list[2], [0])*array_equals(result_list[1], [2, 0]);
	
	// easy & platf casual shooter (who tf does this)
	gscore -= 4*array_equals(result_list[2], [0])*array_equals(result_list[1], [2, 1, 0]);
	
	// hard platf
	gscore -= 1*array_equals(result_list[2], [2])*array_equals(result_list[1], [0]);
	
	// hard shooter platf
	gscore += 1*array_equals(result_list[2], [2])*array_equals(result_list[1], [2, 0]);
	
	// retro casual only
	gscore -= 5*array_equals(result_list[3], [0])*array_equals(result_list[1], [1]);
	
	// retro pc only
	gscore += 1*array_equals(result_list[3], [0])*array_equals(result_list[0], [1]);
	
	// doodle casual only
	gscore -= 3*array_equals(result_list[3], [2])*array_equals(result_list[1], [1]);
	
	// doodle platf only
	gscore += 1*array_equals(result_list[3], [2])*array_equals(result_list[1], [0]);
	
	// pixel platf only
	gscore += 1*array_equals(result_list[3], [1])*array_equals(result_list[1], [0]);
	
	// pixel platf shooter
	gscore += 1*array_equals(result_list[3], [1])*array_equals(result_list[1], [2,0]);
	
	// pixel casual shooter
	gscore += 1*array_equals(result_list[3], [1])*array_equals(result_list[1], [2,1]);
	
	// doodle casual shooter
	gscore += 1*array_equals(result_list[3], [2])*array_equals(result_list[1], [2,1]);
	
	// retro casual shooter
	gscore += 1*array_equals(result_list[3], [0])*array_equals(result_list[1], [2,1]);
	
	if result_list[4] != -1 {
		// fishing platf
		gscore += 1*array_equals(result_list[4], [0])*array_equals(result_list[1], [0]);
	
		// fishing casual
		gscore += 3*array_equals(result_list[4], [0])*array_equals(result_list[1], [1]);
	
		// hard fishing
		gscore -= 3*array_equals(result_list[4], [0])*array_equals(result_list[2], [2]);
	
		// fishing shooter
		gscore += 1*array_equals(result_list[4], [0])*array_equals(result_list[1], [2]);
	
		// weird shooter
		gscore += 3*array_equals(result_list[4], [1])*array_equals(result_list[1], [2]);
	
		// weird easy
		gscore -= 1*array_equals(result_list[4], [1])*array_equals(result_list[2], [0]);
	}
	
	gscore = clamp(gscore, 0, 10);
	
	show_message(gscore);
}