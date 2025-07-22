/// @description Insert description here
// You can write your code in this editor


image_angle += turn_spd*(keyboard_check(vk_right) - keyboard_check(vk_left));

draw_angle = lerp(draw_angle, image_angle, .25);

x = xstart+lengthdir_x(radius, image_angle);
y = ystart+lengthdir_y(radius, image_angle);