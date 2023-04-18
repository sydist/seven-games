surface_depth_disable(true);

enum MODES
{
	DARK,
	LIGHT
}
background = layer_background_get_id(layer_get_id("Background"));
global.mode = MODES.LIGHT;
global.color_main = global.mode * #ffffff
global.color_other = !global.mode * #ffffff

#macro PADDING 30

instance_create_depth(PADDING, room_height - PADDING - 2, -100, obj_player);

function toggle_mode()
{
	if (global.mode == MODES.LIGHT)
		global.mode = MODES.DARK;
	else
		global.mode = MODES.LIGHT;
}
