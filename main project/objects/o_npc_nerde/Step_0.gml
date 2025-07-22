event_inherited(); //so it will inherit from par_speaker

if instance_exists(o_player) {
	if y <= o_player.y {
		anim_frame += 1/60;
		
		if anim_frame > anim_idle_spd {
			image_index++;
			anim_frame = 0;
		}
		
		if image_index > 1 {
			image_index = 0;	
		}
	} else {
		anim_frame += 1/60;
		
		if anim_frame > anim_idle_spd {
			image_index++;
			anim_frame = 0;
		}
		
		if image_index > 5 {
			image_index = 4;	
		}
	}
}

/*

Other code
codecodecode