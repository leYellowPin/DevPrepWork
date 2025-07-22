if global.tdialog[1].used {
	script_execute(global.tdialog[1].scr);	
}
if global.tdialog[2].used {
	script_execute(global.tdialog[2].scr);	
}

if global.tdialog[5].used {
	script_execute(global.tdialog[5].scr);	
}

audio_stop_all();
if !audio_is_playing(snd_outside) {
	audio_play_sound(snd_outside, 1, 1, .6);
}