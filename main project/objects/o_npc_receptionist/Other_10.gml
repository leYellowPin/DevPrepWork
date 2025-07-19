//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Welcome to the Arcade Game Center! How may I help you?";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 1
		i++;
		myText[i]		= ["I want to buy some coins", "Broken arcade machines?", "Bye."];
		mySpeaker[i]	= o_player;
		myTypes[i]      = 1;
		myEmotion[i]    = 0;
		myNextLine[i]   = [2, 6, 13]
		myTextCol[i]    = [1, textCol];
		
		//Line 2
		i++;
		myText[i]		= "All of our arcade machines are currently free to play until this weekend!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "Well, you see... Some of our arcade machines are under maintenance, ...";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 4
		i++;
		myText[i]		= "... so we're offering this as a form of compensation to our customers.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 5
		i++;
		myText[i]		= ["Broken arcade machines?", "Bye."];
		mySpeaker[i]	= o_player;
		myTypes[i]      = 1;
		myEmotion[i]    = 0;
		myNextLine[i]   = [6, 13]
		myTextCol[i]    = [1, textCol];
		
		//Line 6
		i++;
		myText[i]		= "As you've inquired, I'll explain.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 7
		i++;
		myText[i]		= "Our arcade machines are technically not 'broken'.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 8
		i++;
		myText[i]		= "The real reason is that we're still waiting on some of our game providers ...";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 9
		i++;
		myText[i]		= "... to respond to our game distribution request.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 10
		i++;
		myText[i]		= "Because of that reason, the arcade machines that are under maintenance ...";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 11
		i++;
		myText[i]		= "... don't have any games installed yet.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 12
		i++;
		myText[i]		= "We'll try our best to solve this problem as soon as possible!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myNextLine[i]   = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 13
		i++;
		myText[i]		= "We hope you'll have a great time here.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		#endregion
	break;
	
	case "talked":
	#region
		var i = 0;
		//Line 0
		myText[i]		= "Welcome to the Arcade Game Center!";
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