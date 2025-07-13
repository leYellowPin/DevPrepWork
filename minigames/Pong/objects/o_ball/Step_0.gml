/// @description Insert description here
// You can write your code in this editor

if hit_delay <= 0 {
	var _p1_collide = collision_circle(x, y, spd+8, o_pong_player01, 1, 1);
	var _p2_collide = collision_circle(x, y, spd+8, o_pong_player02, 1, 1);
	if _p1_collide{
		image_blend = c_lime;	
		spd += .5;
		
		direction = (180 + _p1_collide.image_angle) - angle_difference(prev_dir, ( _p1_collide.image_angle));
		
		hsp = lengthdir_x(spd, direction);
		vsp = lengthdir_y(spd, direction);
		
		hit_delay = 4;
		
		if instance_exists(o_score_counter) {
			o_score_counter.position_switch = 1;
		}
	}
	if _p2_collide{
		image_blend = c_lime;	
		spd += .25;
		
		direction = (180 + _p2_collide.image_angle) - angle_difference(prev_dir, ( _p2_collide.image_angle));
		
		hsp = lengthdir_x(spd, direction);
		vsp = lengthdir_y(spd, direction);
		
		hit_delay = 5;
		
		if instance_exists(o_score_counter) {
			o_score_counter.position_switch = 2;
		}
	}
}

if hit_delay > 0 {
	hit_delay -= .1;
	image_blend = merge_color(c_white, c_lime, hit_delay/5);
	prev_dir = direction;
}

x += hsp;
y += vsp;