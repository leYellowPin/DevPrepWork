// enemy direction

if (instance_exists(o_si_enemy))
{
	for (var i = 0; i < instance_number(o_si_enemy); i++) {
		var _e = instance_find(o_si_enemy, i);
		
		if (enemy_dir == 1) 
		{
			if (_e.bbox_right + _e.step_length > room_width - border)
			{
				enemy_dir = -1;
				move_enemy_down();
				break;
			}
		}
		
		else if (enemy_dir == -1)
		{
			if (_e.bbox_left - _e.step_length < border)
			{
				enemy_dir = 1;
				move_enemy_down();
				break;
			}
		}
	}
}

if !goal_achieved {
	if (global.red_ufo_killed >= 5) && !goal{
		global.tags.shooter = scr_display_tag(global.tags.shooter, "Shooter", room_width/4, 96);
		global.tags.retro = scr_display_tag(global.tags.retro, "Retro", room_width*2/4, 96);
		global.tags.hard = scr_display_tag(global.tags.hard, "Hard", room_width*3/4, 96);
		goal_achieved = 1;
		goal = 1;
	}
}


if instance_number(o_si_enemy) == 0 && instance_number(o_si_ufo) == 0 && instance_number(o_si_enemy_bullet) == 0 && instance_number(o_si_player_bullet) == 0 {
	room_restart();
}