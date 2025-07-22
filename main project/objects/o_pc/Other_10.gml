//---You can update variables here!---//
reset_dialogue_defaults();

var i;
switch(choice_variable){
	case -1:
	#region 
		if game_scene != noone {
			i = 0;
			myText[i]     = ["Use PC.", "Not now."];
			mySpeaker[i]  = id;
			myTextCol[i]  = textCol;
			myTypes[i]    = 1;
			myNextLine[i] = [1, 2];
		
			i++;
			myText[i]     = "Booting up the pc...";
			mySpeaker[i]  = id;
			myTextCol[i]  = textCol;
			myScripts[i]  = [load_arcade, game_scene];
			myNextLine[i] = -1;
		
			i++;
			myText[i]     = "I'll use my PC later.";
			mySpeaker[i]  = o_player;
		} else {
			i = 0;
			myText[i]     = "I still need to look for inspirations before I can start making the game.";
			mySpeaker[i]  = o_player;
		}
		
	#endregion
	break;
}