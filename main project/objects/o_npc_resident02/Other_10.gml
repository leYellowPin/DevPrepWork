//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 1
		var i = 0;
		myText[i]		= "Hi there!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 2;
		myTextCol[i]    = [1, textCol];
		
		//Line 2
		i++;
		myText[i]		= "Hello.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//Line 3
		i++;
		myText[i]		= "The weather is nice today, isn't it?";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "Wish the same for your day too, stranger!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 2
		i++;
		myText[i]		= "Thanks. (Finally, a somewhat normal person in this town!)";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//Line 2
		i++;
		myText[i]		= "By the way, what are you doing?";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//Line 3
		i++;
		myText[i]		= "I'm just jogging around, don't mind me!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 2
		i++;
		myText[i]		= "Alright.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		#endregion
	break;
	
	case "talked":
	#region
		var i = 0;
		//Line 0
		myText[i]		= "What's the matter?";
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