/// @description Insert description here
// You can write your code in this editor


image_angle += turn_spd*(keyboard_check(vk_right) - keyboard_check(vk_left));

x = xstart+lengthdir_x(radius, image_angle);
y = ystart+lengthdir_y(radius, image_angle);