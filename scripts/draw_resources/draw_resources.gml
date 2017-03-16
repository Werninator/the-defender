/// draw_resources(x, y)

with oGame {
	var g = gold;
	var w = wood;
	var s = stone;
	var f = fabric;
	var t = alarm[0];
}

var _x = argument0;
var _y = argument1;

var fPadX = 5;
var fPadY = 4;

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
	string(w),
	_x + fPadX,
	_y + fPadY,
	font_bigger
);