

if (collision_circle(x, y, 5, obj_player, true, true))
{
	if (color == #000000 && global.mode == MODES.LIGHT)
	{
		return
	}
	
	if (color == #ffffff && global.mode == MODES.DARK)
	{
		return
	}
	
	try
	{
		audio_play_sound(snd_next_level, 0, false);
		room_goto_next();
	}
	catch(_e)
	{
		game_end();
	}
}

