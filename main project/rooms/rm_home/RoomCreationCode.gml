layer_set_visible(layer_get_id("Dark_Layer"), true);
//[-1, [change_variable, "dialog_toilet", "mtext", ["You no longer have the urge to piss."]], [instance_destroy, id]]

if global.tdialog[0].used {
	script_execute(global.tdialog[0].scr);	
}

if !global.tdialog[3].used{
	global.sq_start_id = layer_sequence_create("Sequence_start", global.player_pos[room]._x, global.player_pos[room]._y, sq_start);
} else {
	script_execute(global.tdialog[3].scr);	
}

if global.tdialog[6].used {
	script_execute(global.tdialog[6].scr);	
}