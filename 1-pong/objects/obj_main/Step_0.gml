if (keyboard_check_pressed(vk_enter) && !gameStarted)
{
	instance_create_depth(160, 90, 0, obj_ball);
	instance_create_depth(20, 90, 0, obj_wall,
	{
		isPlayer: true	
	});
	instance_create_depth(300, 90, 0, obj_wall);
	gameStarted = true
}
