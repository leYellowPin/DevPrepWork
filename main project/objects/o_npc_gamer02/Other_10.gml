//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 1
		var i = 0;
		myText[i]		= "This Game Center is so boring . . .";
		mySpeaker[i]	= id;
		myEmotion[i]    = 2;
		myEmote[i]      = 7;
		myTextCol[i]    = [1, textCol];
		
		//Line 2
		i++;
		myText[i]		= "How so?";
		mySpeaker[i]	= o_player;
		myEmote[i]      = 10;
		myEmotion[i]	= 0;
		
		//Line 3
		i++;
		myText[i]		= "Most of the arcade machines here doesn't even work!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "They're all under maintenance!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 9;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "Moreover, this place was opened just two days ago!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 8;
		myTextCol[i]    = [1, textCol];
		
		//Line 4
		i++;
		myText[i]		= "Damn, no games in a game center. How ironic.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		#endregion
	break;
	
	case "talked":
	#region
		var i = 0;
		//Line 0
		myText[i]		= "This Game Center is so boring . . .";
		myEmotion[i]	= 0;
		mySpeaker[i]	= id;
		myTextCol[i]	= [1,textCol];
		
		//Line 1
		i++;
		myText[i]		= ". . .";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}