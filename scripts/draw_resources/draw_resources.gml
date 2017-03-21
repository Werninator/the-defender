/// draw_resources(x, y)

with oGame {
	var w = string(wood);
	var s = string(stone);
	var f = string(fabric);
}

var _x = argument0;
var _y = argument1;

var fPadX = 5;
var fPadY = 4;
var pad = 16;

// Wood
draw_sprite_ext(
	sResources,
	0,
	_x,
	_y,
	2,
	2,
	0,
	c_white,
	1
);

_x += 32;

draw_text_with_shadow(
	w,
	_x + fPadX,
	_y + fPadY,
	font_bigger
);

_x += pad + string_width(w);

// Stone
draw_sprite_ext(
	sResources,
	1,
	_x,
	_y,
	2,
	2,
	0,
	c_white,
	1
);

_x += 32;

draw_text_with_shadow(
	s,
	_x + fPadX,
	_y + fPadY,
	font_bigger
);

_x += pad + string_width(s);

// Fabric
draw_sprite_ext(
	sResources,
	2,
	_x,
	_y,
	2,
	2,
	0,
	c_white,
	1
);

_x += 32;

draw_text_with_shadow(
	f,
	_x + fPadX,
	_y + fPadY,
	font_bigger
);

// _x += pad + string_width(f);