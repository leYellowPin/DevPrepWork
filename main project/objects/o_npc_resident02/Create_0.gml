event_inherited(); //so it will inherit from par_speaker


//-------DIALOGUE STUFF

myPortrait			= s_guy02_p;
myVoice				= snd_voice1;
myName				= "Nice guy";

//myPortraitTalk		= spr_portrait_examplechar_mouth;
//myPortraitTalk_x	= 26;
//myPortraitTalk_y	= 44;
//myPortraitIdle		= spr_portrait_examplechar_idle;

textCol = c_lime;

image_speed = 0;
anim_frame = 0;
anim_idle_spd = .5;

//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue

move_frame = 0;
move_dir = 1;

idle_func = function() {
	if y <= o_player.y {
		anim_frame += 1/60;
		
		if anim_frame > anim_idle_spd {
			image_index++;
			anim_frame = 0;
		}
		
		if image_index > 1 {
			image_index = 0;	
		}
		image_index = clamp(image_index, 0,1);
	} else {
		anim_frame += 1/60;
		
		if anim_frame > anim_idle_spd {
			image_index++;
			anim_frame = 0;
		}
		
		if image_index > 7 {
			image_index = 6;	
		}
		
		image_index = clamp(image_index, 6,7);
	}		
}