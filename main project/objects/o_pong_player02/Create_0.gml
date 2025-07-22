/// @description Insert description here
// You can write your code in this editor

dir = 0;

radius = 96;
turn_spd = 2.5;

rng = irandom_range(-2, 2); // random value to reduce bot's accuracy && first hit must be accurate

draw_angle = 0;

x = xstart+lengthdir_x(radius, image_angle);
y = ystart+lengthdir_y(radius, image_angle);

image_blend = c_aqua;
