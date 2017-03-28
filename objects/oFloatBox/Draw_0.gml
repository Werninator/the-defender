var factor = alarm[0] / room_speed;

draw_set_alpha(factor + .5);

draw_set_font(font_mini);

draw_text_with_shadow(
	text,
	x - string_width(text) / 2,
	y - 16 + factor,
	font_mini
);

draw_set_alpha(1);