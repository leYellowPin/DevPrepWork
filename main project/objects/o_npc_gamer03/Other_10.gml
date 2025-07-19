//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 1
		var i = 0;
		myText[i]		= "I love this game!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 2;
		myTextCol[i]    = [1, textCol];
		
		//Line 2
		i++;
		myText[i]		= "How so?";
		mySpeaker[i]	= o_player;
		myEmote[i]      = 10;
		myEmotion[i]	= 0;
		
		//Line 3
		i++;
		myText[i]		= "It's an improvement version of PongBall!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "The devs made it so your paddle moves in a circle!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 4
		i++;
		myText[i]		= "That sounds fun.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		#endregion
	break;
	
	case "talked":
	#region
		var i = 0;
		//Line 0
		myText[i]		= "Don't call me a nerd! I am not a nerd!";
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