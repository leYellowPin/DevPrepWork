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
			
			if ((_x > _dirx1) + (_x < _dirx2)) != 0 {
				other.dir = point_direction(room_width/2, room_height/2, _x, _y) + other.rng;
				break;
			} 
			if ((_y > _diry1) + (_y < _diry2)) != 0 {
				other.dir = point_direction(room_width/2, room_height/2, _x, _y) + other.rng;
				break;
			}
		}
	}
	
	if (dir+1 >= 360) || (dir-1 <= -360) {
		dir = 0;	
	}
	
	if angle_difference(dir, image_angle) > 0{
		image_angle += turn_spd;
	}
	if angle_difference(dir, image_angle) < 0{
		image_angle -= turn_spd;
	}
}

draw_angle = lerp(draw_angle, image_angle, .25);

x = xstart+lengthdir_x(radius, image_angle);
y = ystart+lengthdir_y(radius, image_angle);