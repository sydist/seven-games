other.x += (x - other.x) * 0.15;
other.y += (y - other.y) * 0.15;
other.image_xscale += (0 - other.image_xscale) * 0.075;
other.image_yscale += (0 - other.image_yscale) * 0.075;
other.image_alpha -= 0.1;
other.vspeed = 0;

if (other.image_alpha <= 0.25)
{
	instance_destroy(other);
	audio_play_sound(snd_point, 0, false);
	count++
	
	global.sock_speed = max(60 - (count div 5), 30)
	time_source_reconfigure(
		global.ts_spawn_socks,
		global.sock_speed,
		time_source_units_frames,
		obj_game.spawn_sock,
		[],
		-1
	);
	time_source_start(global.ts_spawn_socks)
}	