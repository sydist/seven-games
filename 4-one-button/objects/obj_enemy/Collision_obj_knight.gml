if (other.sprite_index == spr_knight_jumping)
{
	if (y > other.y)
		other.vspeed = -12;
		
	other.count++;
		
	instance_destroy();	
}
else
{
	obj_main.game_on = false;
	with(obj_enemy)
		instance_destroy()
}