/// @description Insert description here
// You can write your code in this editor

if hit_delay <= 0 {
	var _p1_collide = collision_circle(x, y, spd+8, o_pong_player01, 1, 1);
	var _p2_collide = collision_circle(x, y, spd+8, o_pong_player02, 1, 1);
	if _p1_collide{
		image_blend = _p1_collide.image_blend;	
		spd += .25;
		o_pong_player02.rng = irandom_range(-12, 12); // increase accuracy when the bot is losing
		
		direction = (180 + _p1_collide.image_angle) - angle_difference(prev_dir, ( _p1_collide.image_angle));
		
		hsp = lengthdir_x(spd, direction);
		vsp = lengthdir_y(spd, direction);
		
		hit_delay = 4;
		
		if instance_exists(o_score_counter) {
			o_score_counter.position_switch = 1;
		}
	}
	if _p2_collide{
		image_blend = _p2_collide.image_blend;	
		spd += .25;
		o_pong_player02.rng = irandom_range(-19, 19); // decrease accuracy when the bot is winning
		
		direction = (180 + _p2_collide.image_angle) - angle_difference(prev_dir, ( _p2_collide.image_angle));
		
		hsp = lengthdir_x(spd, direction);
		vsp = lengthdir_y(spd, direction);
		
		hit_delay = 4;
		
		if instance_exists(o_score_counter) {
			o_score_counter.position_switch = 2;
		}
	}
}

if hit_delay > 0 {
	hit_delay -= .1;
	//image_blend = merge_color(image_blend, c_white, hit_delay/4);
	prev_dir = direction;
}

x += hsp;
y += vsp;