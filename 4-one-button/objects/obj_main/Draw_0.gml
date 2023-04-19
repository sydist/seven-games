if (!game_on)
{
	draw_set_halign(fa_center);
	draw_text(160, 90, "Good Knight!");
	draw_text(160, 100, "You killed " + string(_player.count) + " enemies!");
	
}