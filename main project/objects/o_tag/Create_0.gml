/// @description Insert description here
// You can write your code in this editor

event_inherited();

type = "";
content = 0;
image_speed = 0;

image_xscale = .75;
image_yscale = .75;

switch (image_index) {
	case 0:
		type = "platform";
		content = 0; // mobile
		if !global.tags.mobile instance_destroy();
	break;
	case 1:
		type = "platform";
		content = 1; // pc
		if !global.tags.pc instance_destroy();
	break;
	case 2:
		type = "genre";
		content = 0; // platformer
		if !global.tags.platformer instance_destroy();
	break;
	case 3:
		type = "genre";
		content = 1; // casual
		if !global.tags.casual instance_destroy();
	break;
	case 4:
		type = "genre";
		content = 2; // shooter
		if !global.tags.shooter instance_destroy();
	break;
	case 5:
		type = "difficult";
		content = 0; // easy
		if !global.tags.easy instance_destroy();
	break;
	case 6:
		type = "difficult";
		content = 1; // medium
		if !global.tags.medium instance_destroy();
	break;
	case 7:
		type = "difficult";
		content = 2; // hard
		if !global.tags.hard instance_destroy();
	break;
	case 8:
		type = "art";
		content = 0; // retro
		if !global.tags.retro instance_destroy();
	break;
	case 9:
		type = "art";
		content = 1; // pixel art
		if !global.tags.pixelart instance_destroy();
	break;
	case 10:
		type = "art";
		content = 2; // doodle
		if !global.tags.doodle instance_destroy();
	break;
	case 11:
		type = "other";
		content = 0; // fishing
		if !global.tags.fishing instance_destroy();
	break;
	case 12:
		type = "other";
		content = 1; // weird
		if !global.tags.weird instance_destroy();
	break;
}