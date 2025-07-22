//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Uhm, hello fisherman.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		//Line 1
		i++;
		myText[i]		= "Oh! Hi there, young one.";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 11;
		myTextCol[i]    = [1, textCol];
		
		//Line 2
		i++;
		myText[i]		= "I haven't seen you before... Are you a new resident in this town?";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 10;
		myTextCol[i]    = [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= "Nope, it's just that I barely go outside.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		//Line 4
		i++;
		myText[i]		= "I see... So what brings you here, young one?";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 0;
		myTextCol[i]    = [1, textCol];
		
		//Line 5
		i++;
		myText[i]		= "I'm currently having trouble with finding ideas for my video game . . .";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		//Line 6
		i++;
		myText[i]		= "... and the nerdy guy said that meeting you might help.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		//Line 4
		i++;
		myText[i]		= "Ah, that smart boy send you here? I can see the reason why . . .";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 4
		i++;
		myText[i]		= "I'm no expert at video games though, but how about this?";
		mySpeaker[i]	= id;
		myEmotion[i]    = 0;
		myTextCol[i]    = [1, textCol];
		
		//Line 4
		i++;
		myText[i]		= "I can guide you to catch some fish, maybe this could help?";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myEmote[i]      = 0;
		myTextCol[i]    = [1, textCol];
		
		//Line 6
		i++;
		myText[i]		= "I don't think fishing and video games are in the same topic.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		
		//Line 4
		i++;
		myText[i]		= "C'mon, you'll never know what can happen if you don't try!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 4
		i++;
		myText[i]		= "Here, I have a spare fishing rod for you. Take this!";
		mySpeaker[i]	= id;
		myEmotion[i]    = 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 6
		i++;
		myText[i]		= "Alright, I guess I'll try this.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		
		//Line 6
		i++;
		myText[i]		= "(fishing minigame not finished in time so here's the tag)";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		myScripts[i]    = [global.tdialog[5].scr];
		
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