/// @description Insert description here
// You can write your code in this editor

event_inherited();

type = "";
content = 0;
image_speed = 0;
switch (image_index) {
	case 0:
		type = "platform";
		content = 0; // mobile
	break;
	case 1:
		type = "platform";
		content = 1; // pc
	break;
	case 2:
		type = "genre";
		content = 0; // platformer
	break;
	case 3:
		type = "genre";
		content = 1; // casual
	break;
	case 4:
		type = "genre";
		content = 2; // shooter
	break;
	case 5:
		type = "difficult";
		content = 0; // easy
	break;
	case 6:
		type = "difficult";
		content = 1; // medium
	break;
	case 7:
		type = "difficult";
		content = 2; // hard
	break;
	case 8:
		type = "art";
		content = 0; // retro
	break;
	case 9:
		type = "art";
		content = 1; // pixel art
	break;
	case 10:
		type = "art";
		content = 2; // doodle
	break;
	case 11:
		type = "other";
		content = 0; // fishing
	break;
	case 12:
		type = "other";
		content = 1; // weird
	break;
}