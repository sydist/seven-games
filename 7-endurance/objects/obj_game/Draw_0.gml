draw_set_halign(fa_center);
draw_set_font(fnt_main);
draw_text(128, 112, "Score: \n" + string(score));
draw_set_halign(fa_left);
draw_text(0, 0, "Highscore: " + string(highscore_value(1)));
