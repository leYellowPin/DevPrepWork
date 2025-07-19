//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "What's up bro!";
		mySpeaker[i]	= id;
		myEmote[i]      = 2;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 1
		i++;
		myText[i]		= "Hi Ted.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, c_white];
		
		//Line 2
		i++;
		myText[i]		= "It's been a while since the last time we've met!";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i] =  [1, textCol];
		
		//Line 3
		i++;
		myText[i]		= ". . . It's only been 4 days.";
		mySpeaker[i]	= o_player;
		myEmote[i]      = 3;
		myEmotion[i]	= 0;
		myTextCol[i]    = [1, c_white];
		
		//Line 4
		i++;
		myText[i]		= "I'm surprised that you actually went outside!";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 5
		i++;
		myText[i]		= "Seems like you really want to touch some grass, eh?";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 6
		i++;
		myText[i]		= ". . . I still go out sometimes to buy groceries. Don't tease me, duh.";
		mySpeaker[i]	= o_player;
		myEmote[i]      = 3;
		myEmotion[i]	= 0;
		myTextCol[i]    = [1, c_white];
		
		//Line 7
		i++;
		myText[i]		= "Haha, alright. Then, what are you looking for, friend?";
		mySpeaker[i]	= id;
		myEmote[i]      = 0;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 8
		i++;
		myText[i]		= ["Game ideas.", "It's none of your business."];
		myTypes[i]		= 1;
		myEmotion[i]	= 0;
		mySpeaker[i]	= o_player;
		myNextLine[i]	= [9,11];
		
		//Line 9
		i++;
		myText[i]		= "You're into game development now? That's great!";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 10
		i++;
		myText[i]		= "There's a Game Center around here, you might wanna check it out.";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol, 10, c_yellow, 22, textCol];
		myNextLine[i]   = 14;
		
		//Line 11
		i++;
		myText[i]		= "Hey! Don't be so rude!";
		mySpeaker[i]	= id;
		myEmotion[i]	= 2;
		myTextCol[i]    = [1, textCol];
		
		//Line 12
		i++;
		myText[i]		= "Anyways, I'll probably be going to the Game Center later.";
		mySpeaker[i]	= id;
		myEmotion[i]	= 0;
		myTextCol[i]    = [1, textCol, 39, c_yellow, 51, textCol];
		
		//Line 13
		i++;
		myText[i]		= "See ya later.";
		mySpeaker[i]	= id;
		myEmotion[i]	= 1;
		myTextCol[i]    = [1, textCol];
		
		//Line 14
		i++;
		myText[i]		= "ok.";
		mySpeaker[i]	= o_player;
		myEmotion[i]	= 0;
		myScripts[i]    = [global.tdialog[1].scr];
		myTextCol[i]    = [1, c_white];
		#endregion
	break;
	
	case "talked":
	#region
		var i = 0;
		//Line 0
		myText[i]		= "Hi! ";
		myTextSpeed[i]	= [1, 0.3];
		myEmotion[i]	= 1;
		mySpeaker[i]	= id;
		myTextCol[i]	= [1,textCol];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}