randomize();

audio_play_sound(snd_music, 1, true)

instance_create_depth(160, 200, 0, obj_basket);
global.sock_speed = 60;

function spawn_sock()
{
	instance_create_depth(random_range(32, 288), 0, 0, obj_sock);
}

global.ts_spawn_socks = time_source_create(
	time_source_game,
	global.sock_speed,
	time_source_units_frames,
	spawn_sock, 
	[], 
	-1
)

time_source_start(global.ts_spawn_socks);


