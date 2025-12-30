/// @description Insert description here
// You can write your code in this editor

if instance_exists(o_player) {
	if !instance_exists(obj_textbox) {
		
		if point_distance(x, y, o_player.x, o_player.y) > 38 {
			action_delay -= 1/60;
			
			if action_delay <= 0{
				move_frame += 1/60;
			
				if move_frame < 2{
					y -= 1*move_dir;
				} else {
					move_dir = -move_dir;
					move_frame = 0;	
				}
			
				if (y - yprevious) > 0 {
					anim_frame += 1.5/60;
		
					if anim_frame > anim_idle_spd {
						image_index++;
						anim_frame = 0;
					}
		
					if image_index > 3 {
						image_index = 2;	
					}
					image_index = clamp(image_index, 2,3);	
				} else if (y - yprevious) < 0 {
					anim_frame += 1.5/60;
		
					if anim_frame > anim_idle_spd {
						image_index++;
						anim_frame = 0;
					}
		
					if image_index > 9 {
						image_index = 8;	
					}
					image_index = clamp(image_index, 8,9);	
				}
			}
		} else {
			script_execute(idle_func);
			action_delay = 0.5;
		}
	} else {
		script_execute(idle_func);
		action_delay = 0.5;
	}
}


draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);