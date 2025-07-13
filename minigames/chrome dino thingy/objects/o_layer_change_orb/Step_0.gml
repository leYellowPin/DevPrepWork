x -= spd;

if (x < -50)
{
	o_dino_game_controller.alt_generation = true;
	instance_destroy();
}