// Auto-generated stubs for each available event.

function sq_start_Moment()
{
	o_player.movement_type = -1;
	layer_sequence_pause(global.sq_start_id);
	create_textevent(
	["You have been granted access to a character of this world. ", 
	"To control your character, you may use [W A S D] or arrow keys. ",
	"To interact with other characters, you may use [E]. ",
	"Your character just get started making his first ever video game. ",
	"Your objective is to help him with the prep work of making a game ...",
	"... which is finding inspirations, plans for the game. ",
	"Now..."],
	-1, -1, -1, -1, -1, [-1, -1, -1, -1, -1, -1, [layer_sequence_play, global.sq_start_id]]);
}



function sq_start_Moment_1()
{
	with o_player {
		o_camera.viewZoomW = .5;
		o_camera.viewZoomH = .5;
		create_dialogue("LET'S START MAKING MY FIRST GAME!", id);
		movement_type = 1;
		script_execute(global.tdialog[3].scr);
	}
}