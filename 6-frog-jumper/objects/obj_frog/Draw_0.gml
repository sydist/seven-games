draw_set_font(fnt_main);
draw_text(5, 5, "time left: " + string(death_timer));
draw_self();

if (game_over)
{
	draw_set_halign(fa_center);
	draw_text(128, 112, "game over");
	draw_text(128, 124, "press r to restart");
	draw_set_halign(fa_left);
}