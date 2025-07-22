//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Greetings, stranger!";
		mySpeaker[i]	= id;
		myEmote[i]      = 0;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 1
		i++;
		myText[i]		= "Hi nerd.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//Line 2
		i++;
		myText[i]		= "Don't call me a nerd! I am not a nerd!";
		mySpeaker[i]	= id;
		myEmote[i]      = 4;
		myEmotion[i]	= 2;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= ". . . but it seems like your name-";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		//Line 4
		i++;
		myText[i]		= "Eerrmm, did you know that according to the first rule of this city, harassment by any means are considered an illegal behaviour. Therefore, the sentence may be around from 1 year to 5 years of i am not continuing this";
		mySpeaker[i]	= id;
		myEmote[i]      = 4;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 5
		i++;
		myText[i]		= "Truly the typical nerd behaviour!";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//Line 6
		i++;
		myText[i]		= ". . . what are you looking for then, mr Rude?";
		mySpeaker[i]	= id;
		myEmote[i]      = 4;
		myEmotion[i]	= 2;
		myTextCol[i]    = [1, textCol];
		
		//Line 7
		i++;
		myText[i]		= ["Inspirations for my video game", "Game ideas"];
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		myTypes[i]      = 1;
		myNextLine[i]   = [8, 9];
		
		//Line 8
		i++;
		myText[i]		= "Ah, then you have met the right person!";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		myNextLine[i]   = 11;
		
		//Line 9
		i++;
		myText[i]		= "You mean 'inspirations', right?";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 10
		i++;
		myText[i]		= "Yeah, whatever...";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//Line 11
		i++;
		myText[i]		= "You could pay a visit to the newly opened Game Center in this town...";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol, 43, c_yellow, 55, textCol];
		
		//Line 12
		i++;
		myText[i]		= "... or you could try some new activities that you've never done before!";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 13
		i++;
		myText[i]		= "That may help you with finding new inspirations for your game!";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 14
		i++;
		myText[i]		= "I can't seem to find anything interesting in this town though . . .";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		//Line 15
		i++;
		myText[i]		= "Want a hint from the great Nerde?";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myEmote[i]      = 11;
		myTextCol[i]    = [1, textCol, 8, c_yellow, 12, textCol];
		
		//Line 16
		i++;
		myText[i]		= "There's a fisherman near the river, perhaps you could pay him a visit!";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol, 11, c_yellow, 20, textCol];
		
		//Line 17
		i++;
		myText[i]		= "Welp, I guess I'll have to find him. Thanks nerd.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//Line 18
		i++;
		myText[i]		= "Don't call me a nerd! I am not a nerd!";
		mySpeaker[i]	= id;
		myEmote[i]      = 4;
		myEmotion[i]	= 2;
		myTextCol[i]    = [1, textCol];
		myScripts[i]    = [global.tdialog[2].scr];
		
		#endregion
	break;
	
	case "talked":
	#region
		var i = 0;
		//Line 0
		myText[i]		= "Don't call me a nerd! I am not a nerd!";
		myEmotion[i]	= 2;
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