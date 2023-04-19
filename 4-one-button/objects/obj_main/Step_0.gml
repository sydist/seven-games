_player = instance_nearest(x, y, obj_knight);


if (game_on)
{
	if (--slime_timer <= 0)
{
	slime_timer = random_range(30, 120);
	var _starting_position = choose(0, 320);
	var _hspeed = (_starting_position == 0) ? 1 : -1;

	instance_create_depth(_starting_position, 142, -100, obj_enemy, 
	{
		sprite_index: spr_slime,
		hspeed: _hspeed * 2,
	});
}

if (--bat_timer <= 0)
{
	bat_timer = random_range(60, 180);
	var _starting_position = choose(0, 320);
	var _hspeed = (_starting_position == 0) ? 1 : -1;

	instance_create_depth(_starting_position, 90, -100, obj_enemy, 
	{
		sprite_index: spr_bat,
		hspeed: _hspeed * 2,
	});
}	
}
else
{
	
	_player.x = 160;
	_player.y = 90;
	_player.sprite_index = spr_knight_jumping;
	_player.vspeed = 0;
}
