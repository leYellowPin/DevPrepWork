// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_display_tag(_type, _name, _x, _y){
	if instance_exists(o_player) {
		o_player.movement_type = -1;	
	}
	if !layer_exists("Text") {
		layer_create(0, "Text");	
	}
	
	with instance_create_layer(_x, _y, "Text", o_tag_display) {
		tag_type = _type;
		tag_name = _name;
	}
	
	if !global.tdialog[6].used {
		global.tdialog[6].used = true;
	}
	
	return 1;
}