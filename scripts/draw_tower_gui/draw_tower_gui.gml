with oGame {
	var w = string(towerWood);
	var s = string(towerStone);
	var f = string(towerFabric);
	var selected = selectedTowerType;
}

var cam = view_get_camera(0);
var camW = camera_get_view_width(cam);
var camH = camera_get_view_height(cam);

var padding = 10;
var scaleX = 2;
var scaleY = 2;
var drawX = camW * 2 - padding - 32;
var drawY = camH * 2 - padding - 32;
var drawColor = c_white;

// Draw selected Tower indicator
draw_rectangle_color(
	drawX - (padding + 32) * (2 - selected),
	drawY,
	drawX - (padding + 32) * (2 - selected) + 32,
	drawY + 32,
	c_black,
	c_black,
	c_black,
	c_black,
	false
);

// Wood Tower
draw_text_with_shadow(
	w,
	drawX - (padding + 32) * 2 + 16 - string_width(w),
	drawY - 16,
	font_regular
);
draw_sprite_ext(sTower, 0, drawX - (padding + 32) * 2, drawY, scaleX, scaleY, 0, drawColor, 1);

// Stone Tower
draw_text_with_shadow(
	s,
	drawX - (padding + 32) + 16 - string_width(w) / 2,
	drawY - 16,
	font_regular
);
draw_sprite_ext(sTower, 1, drawX - (padding + 32), drawY, scaleX, scaleY, 0, drawColor, 1);

// Fabric Tower
draw_text_with_shadow(
	f,
	drawX + 16 - string_width(w) / 2,
	drawY - 16,
	font_regular
);
draw_sprite_ext(sTower, 2, drawX, drawY, scaleX, scaleY, 0, drawColor, 1);