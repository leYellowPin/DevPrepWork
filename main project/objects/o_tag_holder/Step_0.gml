/// @description Insert description here
// You can write your code in this editor

var _list = ds_list_create();
var _n = instance_place_list(x, y, o_tag, _list, false);

if (_n <= list_limit) {
	if keyboard_check_pressed(vk_enter) {
		with o_tag {
			if place_meeting(x, y, other.id){
				if type == other.holder_type {
					if other.tag_list_content == -1 {
						other.tag_list_content = array_create(0)	
					}
					if array_length(other.tag_list_content) < other.list_limit {
						array_push(other.tag_list_content, content);
						result_ready = true;
					}
					//show_message(other.tag_list_content);
				}
			}
		}
	}
}
ds_list_destroy(_list);