/// @description Insert description here
// You can write your code in this editor

input.left= keyboard_check(vk_left) || keyboard_check(ord("A"));
input.right= keyboard_check(vk_right) || keyboard_check(ord("D"));
input.up= keyboard_check(vk_up) || keyboard_check(ord("W"));
input.down= keyboard_check(vk_down) || keyboard_check(ord("S"));
input.confirm= keyboard_check(vk_end) || keyboard_check(vk_space) || keyboard_check(ord("E"));

var _is_talking = instance_exists(obj_textbox);

switch(movement_type){
	case 0:
		hsp = move_spd*(input.right - input.left) * !_is_talking;
		vsp = move_spd*(input.down - input.up) * !_is_talking;
	break;
	case 1:
		if (input.right + input.left + input.up + input.down > 0) && !_is_talking {
			move_dir = point_direction(x, y, x+(input.right-input.left)*10, y+(input.down-input.up)*10);
			hsp = lengthdir_x(move_spd, move_dir);
			vsp = lengthdir_y(move_spd, move_dir);
			
			animate_player("walk", move_dir);
		} else {
			hsp = 0;
			vsp = 0;
			animate_player("idle", move_dir);
		}
	break;
	case -1:
		hsp = 0;
		vsp = 0;
	break;
}

switch(walk) {
	case "down-walk":
		anim_frame += 1/60;
		if anim_frame > anim_spd {
			image_index++;
			anim_frame = 0;
		}
		if image_index > 4 {
			image_index = 3;	
		}
	break;
	case "up-walk":
		anim_frame += 1/60;
		if anim_frame > anim_spd {
			image_index++;
			anim_frame = 0;
		}
		if image_index > 8 {
			image_index = 7;	
		}
	break;
	case "down-idle":
		anim_frame += 1/60;
		
		if anim_frame > anim_idle_spd {
			image_index++;
			anim_frame = 0;
		}
		
		if image_index > 1 {
			image_index = 0;	
		}
	break;
	case "up-idle":
		anim_frame += 1/60;
		
		if anim_frame > anim_idle_spd {
			image_index++;
			anim_frame = 0;
		}
		
		if image_index > 6 {
			image_index = 5;	
		}
	break;
	case "sideway-walk":
		anim_frame += 1.25/60;
		if anim_frame > anim_spd {
			image_index++;
			anim_frame = 0;
		}
		if image_index > 15 {
			image_index = 12;	
		}
	break;
	case "sideway-idle":
		anim_frame += 2/60;
		
		if anim_frame > anim_idle_spd {
			image_index++;
			anim_frame = 0;
		}
		
		if image_index > 10 {
			image_index = 9;	
		}
	break;
}


if instance_exists(obj_textbox) {
	o_camera.viewZoomW = .5;
	o_camera.viewZoomH = .5
} else {
	switch(room) {
		case rm_home:
			move_spd = 2.5;
			o_camera.viewZoomW = .75;
			o_camera.viewZoomH = .75;
		break;
		case rm_city:
			move_spd = 3;
			o_camera.viewZoomW = 1.25;
			o_camera.viewZoomH = 1.25;
		break;
		case rm_arcade:
			move_spd = 2.5;
			o_camera.viewZoomW = 1;
			o_camera.viewZoomH = 1;
		break;
	}	
}

move_and_collide(hsp, vsp, [o_solid, par_speaker], 4, 0, 0, move_spd, move_spd);

// PLAYER STUCK INSIDE SOLID OBJ FIX

if place_meeting(x, y, o_solid){
	for(var f = 0; f <= 128; f++){
		if !place_meeting(x+f, y, o_solid){ x += f; break; }	
		if !place_meeting(x, y+f, o_solid){ y += f; break; }	
		if !place_meeting(x+f, y+f, o_solid){ x += f; y += f; break; }
		if !place_meeting(x-f, y, o_solid){ x -= f; break; }
		if !place_meeting(x, y-f, o_solid){ y -= f; break; }	
		if !place_meeting(x-f, y-f, o_solid){ x -= f; y -= f; break; }
		
		if !place_meeting(x+f, y-f, o_solid){ x += f; y -= f; break; }
		if !place_meeting(x-f, y+f, o_solid){ x -= f; y += f; break; }
	}
}


//show_debug_message(_dark_touched);