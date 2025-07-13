/// @description Insert description here
// You can write your code in this editor

direction = irandom_range(0, 360);
prev_dir = direction;
spd = .75;
hsp = lengthdir_x(spd, direction);
vsp = lengthdir_y(spd, direction);

hit_delay = 0;