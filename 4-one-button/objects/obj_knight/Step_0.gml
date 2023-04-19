if (y < 142 && obj_main.game_on)
{
	vspeed += (3 - vspeed) * 0.2;
	sprite_index = spr_knight_jumping
}
else
	sprite_index = spr_knight


while (y + vspeed > 142)
	y = 142 - vspeed;

image_yscale += (1 - image_yscale) * 0.2;
image_xscale += (sign(hspeed) - image_xscale) * 0.2;

