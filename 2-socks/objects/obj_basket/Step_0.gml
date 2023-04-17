var _dx = keyboard_check(vk_right) - keyboard_check(vk_left);
hspeed += ((_dx * spd) - hspeed) * 0.1;

