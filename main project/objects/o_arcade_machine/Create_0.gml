event_inherited(); //so it will inherit from par_speaker


//-------DIALOGUE STUFF

myPortrait			= s_player_p;
myVoice				= snd_voice1;
myName				= "PiPong";

//myPortraitTalk		= spr_portrait_examplechar_mouth;
//myPortraitTalk_x	= 26;
//myPortraitTalk_y	= 44;
//myPortraitIdle		= spr_portrait_examplechar_idle;

textCol = c_yellow;

//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue

if instance_exists(o_player) {
	depth = o_player.depth +1;	
}
image_speed = 0;

if game_scene == rm_pong {
	myName = "PiPong";
}
if game_scene == rm_si_menu {
	myName = "Invaders HD";	
}
if game_scene == rm_dino_menu {
	myName = "DinoRunnerV5";	
}