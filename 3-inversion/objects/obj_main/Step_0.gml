if (keyboard_check_pressed(ord("Z")))
	toggle_mode()

global.color_main = global.mode * #ffffff
global.color_other = !global.mode * #ffffff

layer_background_blend(background, global.color_other)
