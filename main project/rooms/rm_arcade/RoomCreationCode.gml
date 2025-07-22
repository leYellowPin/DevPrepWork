layer_set_visible(layer_get_id("Dark_Layer"), true);

if global.tdialog[4].used {
	script_execute(global.tdialog[4].scr);	
}

audio_stop_all();
if !audio_is_playing(snd_arcade) {
	audio_play_sound(snd_arcade, 1, 1, .8);
}