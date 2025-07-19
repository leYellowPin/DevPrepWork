//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 1
		var i = 0;
		myText[i]		= "I like this place!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 0;
		myTextCol[i]    = [1, textCol];
		
		//Line 2
		i++;
		myText[i]		= "How so?";
		mySpeaker[i]	= o_player;
		myEmote[i]      = 10;
		myEmotion[i]	= 0;
		
		//Line 3
		i++;
		myText[i]		= "It's a pretty cozy place for me.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "And the best part? This place also have my new favorite game!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 4
		i++;
		myText[i]		= "May I ask what game is it?";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		//Line 3
		i++;
		myText[i]		= "Dino Runner V! It's an endless runner game!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "(How can they even milk an endless runner game? Is it even possible?)";
		mySpeaker[i]	= o_player;
		myEmotion[i]    = 0;
		
		//Line 3
		i++;
		myText[i]		= "(Nevermind, I remembered how the Match 3 genre was. Not surprised anymore.)";
		mySpeaker[i]	= o_player;
		myEmotion[i]    = 0;
		
		//Line 3
		i++;
		myText[i]		= "I'd usually play platformer games, but this one is also great.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol, 18, c_yellow, 34, textCol];
		
		//Line 3
		i++;
		myText[i]		= "What's a platformer?";
		mySpeaker[i]	= o_player;
		myEmotion[i]    = 0;
		
		//Line 3
		i++;
		myText[i]		= "It's a type of game where you can move left and right ...";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "... and jump between platforms, or jump through obstacles!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "Sometimes, there could be some other mechanics like wall jumping or dashing!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "I probably get what that genre is now.";
		mySpeaker[i]	= o_player;
		myEmotion[i]    = 0;
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