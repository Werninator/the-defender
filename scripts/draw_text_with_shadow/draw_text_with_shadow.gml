/// draw_text_with_shadow(text, x, y, font)

var _text = argument[0];
var _x = argument[1];
var _y = argument[2];
var _font = argument[3];

draw_set_font(_font);

// shadow
draw_set_color(c_black);
draw_text(_x + 1, _y + 1, _text);

// shadow
draw_set_color(c_white);
draw_text(_x, _y, _text);

// Reset drawing color
draw_set_color(c_white);