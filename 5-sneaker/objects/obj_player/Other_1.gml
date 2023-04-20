try
{
	room_goto_next();	
}
catch(_e)
{
	delete _e;
	game_restart();
}
