var _alpha

if (layer_index == o_dino_game_controller.current_layer) _alpha = 1;
else _alpha = 0.5;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, _alpha);