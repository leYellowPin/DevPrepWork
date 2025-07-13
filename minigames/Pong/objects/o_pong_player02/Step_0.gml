/// @description Insert description here
// You can write your code in this editor



if instance_exists(o_ball) {
	var _radius = radius;
	with o_ball {
		for (var i=0; i<320; i++){
			var _x = x+lengthdir_x(speed+i, direction);
			var _y = y+lengthdir_y(speed+i, direction);
			var _dirx1 = lengthdir_x(room_width/2+_radius, point_direction(room_width/2, room_height/2, _x, _y));
			var _dirx2 = lengthdir_x(room_width/2-_radius, point_direction(room_width/2, room_height/2, _x, _y));
			var _diry1 = lengthdir_y(room_height/2+_radius, point_direction(room_width/2, room_height/2, _x, _y));
			var _diry2 = lengthdir_y(room_height/2-_radius, point_direction(room_width/2, room_height/2, _x, _y));
			
			if (_x > _dirx1) + (_x < _dirx2) > 0 {
				other.dir = point_direction(room_width/2, room_height/2, _x, _y);
				break;
			} 
			if (_y > _diry1) + (_y < _diry2) > 0 {
				other.dir = point_direction(room_width/2, room_height/2, _x, _y);
				break;
			}
		}
	}
	if image_angle < dir{
		image_angle += turn_spd;
	}
	if image_angle > dir{
		image_angle -= turn_spd;
	}
}

x = xstart+lengthdir_x(radius, image_angle);
y = ystart+lengthdir_y(radius, image_angle);