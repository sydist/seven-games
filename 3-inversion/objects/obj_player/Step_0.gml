image_blend = global.color_main;

var _dx = keyboard_check(vk_right) - keyboard_check(vk_left);
if (_dx != 0)
	image_xscale = _dx;	
image_speed = (_dx != 0 || image_index % 2);

hspeed += (_dx * hspd - hspeed) * 0.1;
if (--can_jump > 0 && keyboard_check_pressed(vk_up))
{
	image_index = 1;
	vspeed = -8;
	can_jump = 0;
}
vspeed += (4 - vspeed) * 0.1;

// Collision
var _wall = (global.mode == MODES.LIGHT) ? obj_ground_white : obj_ground_black;
while (place_meeting(x + hspeed + (_dx * 2), y, _wall))
	hspeed *= 0.5;

while (place_meeting(x, y + vspeed + 2, _wall))
{
	vspeed *= 0.5;
	can_jump = 5;
}

if (y > room_height)
{
		audio_play_sound(snd_next_level, 0, false, undefined, undefined, 0.15);
		room_restart()
}
