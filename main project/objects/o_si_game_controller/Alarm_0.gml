// spawn ufo

var _r = choose(-1,1);

switch _r {
	case -1:
		with instance_create_layer(room_width - border,50, layer, o_si_ufo) {
			dir = -1
		}
	break;
	
	case 1:
		with instance_create_layer(border - 64,50, layer, o_si_ufo) {
			dir = 1
		}
	break;
}

alarm[0] = irandom_range(15*GAMESPEED, 35*GAMESPEED);
