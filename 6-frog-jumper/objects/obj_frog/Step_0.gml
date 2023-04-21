if (death_timer-- <= 0)
{
	death_timer = 0;
	game_over = true;
	cursor_sprite = noone;
	
	if (keyboard_check(ord("R")))
		game_restart();
	
}
else
{
	image_xscale = (mouse_x > room_width / 2) ? 1 : -1;
	if (random(1) > 0.975)
	{
		instance_create_depth(random_range(0, room_width,), 20, -100, obj_fly)
	}
}